#include "plotwidget.h"
#include <QPainter>
#include <QResizeEvent>
#include <QDebug>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <algorithm>
#include <QRandomGenerator>
#include <cmath>


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
    connect(this, &PlotWidget::frameProcessed, dmaWorker, &DMAWorker::allowNextFrame, Qt::QueuedConnection);
    connect(this, &PlotWidget::fftBoundsChanged, dmaWorker, &DMAWorker::setFFTBounds, Qt::QueuedConnection);
}

PlotWidget::~PlotWidget()
{
    dmaWorker->stop();
    dmaThread->quit();
    dmaThread->wait();
}

//------------------ Setters and Getters ---------------------//




void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
{
    if (DEBUG_MSG) qDebug() << " Acquisition function is running ";

    minFreq = minF;
    maxFreq = maxF;
    stepSize = step;

    segments = (maxFreq - minFreq) / stepSize;
    if(segments <= 0) segments = 1;

    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) fft_size = 1;

    data.resize(fft_size * segments);
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
            maxVal = DB_MAX_RANGE;
            minVal = DB_MIN_RANGE;

//            maxVal = 50;
//            minVal = -20;
#endif

        }
        else {
            maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
            minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);

              maxVal = 1e21;
              minVal = 0;
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

      //segment divider lines //
//    if (showSegments && plotData != nullptr)
//    {

//        painter.setPen(QPen(QColor(120,120,120), 1, Qt::DashLine));

//        int totalPoints = plotData->size();
//        int numSegments = totalPoints / FFT_POINTS;

//        float w = width() - leftMargin;
//        float visiblePoints = viewEnd - viewStart;

//        for (int s = 0; s <= numSegments; ++s)
//        {
//            int idx = s * FFT_POINTS;

//            // Only draw visible ones
//            if (idx < viewStart || idx > viewEnd) continue;

//            float x = leftMargin + (idx - viewStart) * w / visiblePoints;

//            painter.drawLine(QPointF(x, 0), QPointF(x, height()));
//        }
//    }

    painter.setPen(QPen(Qt::green, 2));

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

    painter.setPen(QPen(Qt::green, 2));

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

//    for(int k=0;k<std::min(3,(int)peaks.size());k++){

//        float val = peaks[k].first;
//        int idx = peaks[k].second;

//        topValues.append(idx + 24);

//        float px = leftMargin + (idx - viewStart) * w / visiblePoints;
//        float py = h - ((val - minVal)/range)*h;

//        painter.drawText(QPointF(px,py-10),QString::number(k+1));
//        painter.drawEllipse(QPointF(px,py),3,3);
//    }

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

    for(int i = 0; i <= vDivisions; i++)
    {
        float y = h - (i * h / vDivisions);

        // calculate value in the current display mode
        float val;
        if(displayMode == dB) {
            val = minVal + (i / (float)vDivisions) * (maxVal - minVal) - dB_scale_offset;
            painter.drawText(5, y, QString::number(val, 'f', 1)); // 1 decimal for dB
        }
        else { // linear
            val = minVal + (i / (float)vDivisions) * (maxVal - minVal);
            // use scientific notation if values are huge
            painter.drawText(5, y, QString::number(val, 'e', 2)); // e.g., 1.23e14
        }
    }

    // -------- Noise Floor Line --------
//    painter.setPen(QPen(Qt::red, 2, Qt::DashLine));

//    float noiseY = h - ((noiseFloorMean - minVal) / range) * h;

//    painter.drawLine(QPointF(leftMargin, noiseY), QPointF(leftMargin + w, noiseY));

}

// Regenerate grid when resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}

void PlotWidget::onNewFFTData(float noiseSpread_dB, float noiseSpread_Li, float noiseFloor_dB, float noiseFloor_Li, uint32_t index, const std::vector<float>& fft)
{
    // Use sequential indexing to avoid duplicate overwrites
    uint32_t plot_index = index % segments;
    float peak_threshold = noiseFloor_Li + alpha * noiseSpread_Li;

#if DMA_WRITE_FILE
    static QFile file("fft_summary.txt");
    static bool firstWrite = true;  // to write header once
    if(firstWrite)
    {
        if(file.open(QIODevice::WriteOnly | QIODevice::Text))
        {
            QTextStream out(&file);
            out << "# Frame Index | Top 10 FFT Values | NoiseFloor_dB | NoiseFloor_Li\n";
            firstWrite = false;
            file.close();
        }
    }
    if(file.open(QIODevice::Append | QIODevice::Text))
    {
        QTextStream out(&file);
        std::vector<float> fftCopy = fft;
        std::sort(fftCopy.begin(), fftCopy.end(), std::greater<float>());
        out << index << " ";
        for(int i = 0; i < 10 && i < fftCopy.size(); ++i)
        {
            out << fftCopy[i] << " ";
        }
        out << noiseFloor_dB << " " << noiseFloor_Li << "\n";
        file.close();
    }
    else
    {
        if (DEBUG_MSG) qDebug() << "Failed to open summary file";
    }

#endif

    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) {
        fft_size = 1;
    }

    int offset = plot_index * fft_size;
    if (offset + fft_size > data.size()) {
        // protect against unexpected size mismatch
        return;
    }
    if (noiseFloor_dB >= 130){
        is_Peak = true;
    }
    else {
        is_Peak = false;
    }

    for(int i = 0; i < fft_size; ++i)
    {
        float magnitude = fft[i];

        float value;

        if(displayMode == dB)
        {
            value = 10.0f * std::log10(magnitude + 1e-12f);
            if (value >= dB_Threshold){
                value = value - dB_Reduction;
            }
            data[offset + i] = value;
        }
        else
        {
            value = magnitude;
            data[offset + i] = value;
        }


    }



    if(averagingEnabled){
#if INDEX_BASED
        if (plot_index == 0){
            NormalAveraging();
        }

#else
        if (currentStepIndex == segments - 1){
            NormalAveraging();
            update();
        }
#endif
    }

    else {
        plotData = &data;
        update();

    }

    emit frameProcessed();

currentStepIndex = (currentStepIndex + 1) % segments;
}


