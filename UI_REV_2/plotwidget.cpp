#include "plotwidget.h"
#include <QPainter>
#include <QResizeEvent>
#include <QDebug>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <algorithm>
#include <QRandomGenerator>

#define DEVICE_PATH "/dev/fft_dma"
#define NUM_SAMPLES 1024
#define FFT_POINTS 66  // positive frequencies (excluding DC)

#include "appConfig.h"

PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    rubberBand = new QRubberBand(QRubberBand::Rectangle, this);
    setMouseTracking(true);

    samplingMethod  = globalPlotSettings.samplingMethod;
    displayMode     = globalPlotSettings.displayMode;

    qRegisterMetaType<std::vector<float>>("std::vector<float>");
    qRegisterMetaType<uint32_t>("uint32_t");

    dmaWorker->moveToThread(dmaThread);

    connect(dmaThread, &QThread::finished, dmaWorker, &QObject::deleteLater);
    connect(dmaWorker, &DMAWorker::newFFTData, this, &PlotWidget::onNewFFTData);
}

PlotWidget::~PlotWidget()
{
    dmaWorker->stop();
    dmaThread->quit();
    dmaThread->wait();
}

void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
{
#if DEBUG_MSG
    qDebug() << " Acquisition function is running ";
#endif

    minFreq = minF;
    maxFreq = maxF;
    stepSize = step;

    segments = (maxFreq - minFreq) / stepSize;
    if(segments <= 0) segments = 1;

    data.resize(FFT_POINTS * segments);
    data.fill(0.0f);
    viewStart = 0;
    viewEnd = data.size();
    currentStepIndex = 0;
    autosetEnabled = false;

    if(!dmaThread->isRunning())
        dmaThread->start();
    QMetaObject::invokeMethod(dmaWorker, "start", Qt::QueuedConnection);
}

void PlotWidget::stopAcquisition()
{
    QMetaObject::invokeMethod(dmaWorker, "stop", Qt::QueuedConnection);
}

// Draw grid on background pixmap
void PlotWidget::generateGrid()
{
    if (width() <= 0 || height() <= 0) return;

    background = QPixmap(size());
    background.fill(Qt::black);

    QPainter p(&background);

    int w = width();
    int h = height();

    // Grid style
    p.setPen(QPen(QColor(90, 90, 90), 2));

    const int verticalDivs = 10;
    const int horizontalDivs = 8;

    // Vertical lines
    for (int i = 1; i < verticalDivs; ++i)
        p.drawLine(i * w / verticalDivs, 0, i * w / verticalDivs, h);

    // Horizontal lines
    for (int i = 1; i < horizontalDivs; ++i)
        p.drawLine(0, i * h / horizontalDivs, w, i * h / horizontalDivs);
}

void PlotWidget::yscaleUpdate()
{
    if(!autosetEnabled)
    {
        // Keep fixed Y-scale
        if(displayMode == dB) {

#if DB_DYNAMIC_RANGE
            maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
            minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
#else
            maxVal = 250;
            minVal = 50;

//            maxVal = 7;
//            minVal = -20;
#endif

        }
        else {
            maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
            minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
        }
        return;
    }

    // Autoset active → compute dynamic min/max
    if(viewEnd <= viewStart) return;

    maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
    minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);

    if(maxVal - minVal < 1e-6f)
        maxVal = minVal + 1.0f;

    float margin = 0.05f * (maxVal - minVal); // 5% margin
    maxVal += margin;
    minVal -= margin;
}


void PlotWidget::paintEvent(QPaintEvent *)
{
    yscaleUpdate();

    QPainter painter(this);
    painter.drawPixmap(0,0,background);

    int leftMargin = 60;
    int bottomMargin = 30;

    float w = width() - leftMargin;
    float h = height() - bottomMargin;

    painter.setPen(QPen(Qt::green,2));

    float range = maxVal - minVal;
    if(range < 0.0001f) range = 1.0f;

    int visiblePoints = viewEnd - viewStart;
    int pixelWidth = w;

    int step = 1;

    if(visiblePoints > pixelWidth)
        step = visiblePoints / pixelWidth;

    int safeEnd = std::min(viewEnd, (int)plotData->size());

    for(int i = viewStart; i < safeEnd - 1; ++i)
    {
        float x1 = leftMargin + (i - viewStart) * w / visiblePoints;
        float x2 = leftMargin + (i+1 - viewStart) * w / visiblePoints;

        float y1 = h - (((*plotData)[i]   - minVal)/range)*h;
        float y2 = h - (((*plotData)[i+1] - minVal)/range)*h;

        painter.drawLine(QPointF(x1,y1), QPointF(x2,y2));
    }

    // -------- Peak Detection --------
    std::vector<std::pair<float, int>> peaks;

    if (plotData != nullptr && !plotData->empty()) {
        peaks.reserve(viewEnd - viewStart);

        for (int i = viewStart; i < viewEnd; i++) {
            // Use (*plotData)[i] to get the float value at index i
            peaks.emplace_back((*plotData)[i], i);
        }
    }

    std::sort(peaks.begin(), peaks.end(),
              [](const std::pair<float,int>& a,const std::pair<float,int>& b){
        return a.first > b.first;
    });

    QList<float> topValues;

    painter.setPen(Qt::yellow);
    painter.setFont(QFont("Arial",15,QFont::Bold));

    for(int k=0;k<std::min(3,(int)peaks.size());k++){

        float val = peaks[k].first;
        int idx = peaks[k].second;

        topValues.append(idx + 24);

        float px = leftMargin + (idx - viewStart) * w / visiblePoints;
        float py = h - ((val - minVal)/range)*h;

        painter.drawText(QPointF(px,py-10),QString::number(k+1));
        painter.drawEllipse(QPointF(px,py),3,3);
    }

    emit peaksUpdated(topValues);

    // -------- Horizontal Frequency Scale (Zoom Aware) --------
    painter.setPen(Qt::white);
    painter.setFont(QFont("Arial",10));

    int divisions = 5;

    float totalPoints = plotData->size();
    float freqPerPoint = (maxFreq - minFreq) / totalPoints;

    float visibleStartFreq = minFreq + viewStart * freqPerPoint;
    float visibleEndFreq   = minFreq + viewEnd   * freqPerPoint;

    for(int i=0;i<=divisions;i++)
    {
        float x = leftMargin + i * w / divisions;

        float freq = visibleStartFreq +
                     (i/(float)divisions) *
                     (visibleEndFreq - visibleStartFreq);

        painter.drawText(x-25,height()-5,
                         QString::number(freq,'f',2) + " MHz");
    }

    // -------- Vertical Amplitude Scale --------
    int vDivisions = 8;

    for(int i=0;i<=vDivisions;i++)
    {
        float y = h - (i * h / vDivisions);

        float val = minVal + (i/(float)vDivisions) * (maxVal - minVal);
        if(displayMode == dB) {
            painter.drawText(5,y,
                             QString::number(val,'f',1));
        }
    }
}

// Regenerate grid when resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}

void PlotWidget::onNewFFTData(uint32_t index, const std::vector<float>& fft)
{
    uint32_t plot_index = index % segments;



    // Ensure we have space in our data buffer

    if (data.size() < (plot_index + 1) * FFT_POINTS) {
        return;
    }
    int offset = (plot_index) * FFT_POINTS;
    //if(offset < 0) offset = ( segments - 1)* FFT_POINTS;

    for(int i = 0; i < FFT_POINTS; ++i) {
        float magnitude = fft[i];

        if(displayMode == dB) {
            data[offset + i] = 10.0f * std::log10(magnitude + 1e-12f);
#if DEBUG_MSG
            qDebug() << "dB scalind method is used";
#endif
        } else {
            data[offset + i] = magnitude;
#if DEBUG_MSG
            qDebug() << "Linear scalind method is used@@";
#endif
        }
    }


//-----------------------dma write to a file------------------------//

#if DMA_WRITE_FILE

    static int fileIndex = 0;

    QString filename = QString("fft_output_%1.txt").arg(fileIndex++, 4, 10, QChar('0'));

    QFile file(filename);

    if(file.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream out(&file);
        out << "# Plot index: " << plot_index << "\n";
        out << "# FFT size: " << fft.size() << "\n";
        out << "# Segment size: " << segments << "\n";
        for(int i = 0; i < fft.size(); ++i)
            out << fft[i] << "\n";

        file.close();
    }
    else
    {
#if DEBUG_MSG
            qDebug() << "Failed to write FFT file";
#endif
    }

    if(averagingEnabled){
        if (plot_index == 0) {
            onAveragingData();
#if DEBUG_MSG
            qDebug() << "Full frequency sweep completed -> averaging triggered";
#endif

        }
    } else {
#if DEBUG_MSG
            qDebug() << "Averaging disabled -> updating plot";
#endif
        update();
    }

#endif

//-----------------------/-----------------------/------------------------//






    if(averagingEnabled){
        if (plot_index == 0){
            onAveragingData();
#if DEBUG_MSG
            qDebug() << "Full frequency sweep completed -> averaging triggered" << data[0];
#endif
        }
    }
    else {
#if DEBUG_MSG
            qDebug() << "Averaging disabled -> updating plot";
#endif
        plotData = &data;
        update();

    }

    //currentStepIndex = (currentStepIndex + 1) % segments;
#if DEBUG_MSG
            qDebug() << "on New fft data function from plotwidget " << offset;
#endif

}

