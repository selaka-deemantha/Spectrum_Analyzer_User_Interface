#include "plotwidget.h"

#include <QPainter>
#include <QResizeEvent>
#include <QDebug>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <algorithm>

#define DEVICE_PATH "/dev/fft_dma"
#define NUM_SAMPLES 1024

bool PlotWidget::DEBUG_MSG_ON = false;

PlotWidget::PlotWidget(QWidget *parent)
    : QWidget(parent)
{
    data.resize(FFT_POINTS);
    data.fill(0);

    // ---------------- Chart Setup ----------------
    series = new QLineSeries();

    chart = new Chart();
    chart->legend()->hide();
    chart->setBackgroundBrush(Qt::black);
    chart->addSeries(series);

    series->setColor(Qt::green);

    axisX = new QValueAxis();
    axisX->setRange(0, FFT_POINTS);
    axisX->setTitleText("FFT Bins");
    axisX->setTitleBrush(Qt::white);
    axisX->setLabelsBrush(Qt::white);

    axisY = new QValueAxis();
    axisY->setRange(0, 100);
    axisY->setTitleText("Magnitude");
    axisY->setTitleBrush(Qt::white);
    axisY->setLabelsBrush(Qt::white);

    chart->addAxis(axisX, Qt::AlignBottom);
    chart->addAxis(axisY, Qt::AlignLeft);

    series->attachAxis(axisX);
    series->attachAxis(axisY);

    chartView = new ChartView(chart, this);
    chartView->setRenderHint(QPainter::Antialiasing);

    chartView->setGeometry(rect());

    initialPlotArea = chart->plotArea();
    chartView->initialPlotArea = initialPlotArea;

    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);

    timer.start(10);
}

// ---------------- Zoom Methods ----------------
void PlotWidget::zoomIn() {
    chart->zoomIn();
}

void PlotWidget::zoomOut() {
    chart->zoomOut();
    if (chart->plotArea().width() > initialPlotArea.width() || chart->plotArea().height() > initialPlotArea.height()) {
        chart->zoomReset();
    }
}

// ---------------- Setters ----------------
void PlotWidget::setDataSource(DataSource source)
{
    dataSource = source;
}

void PlotWidget::setDownSamplingMethod(DownSamplingMethod source)
{
    samplingMethod = source;
}

void PlotWidget::selectOutputDisplayMode(DisplayMethod source)
{
    displayMode = source;
}



// averaging setters
void PlotWidget::setAveragingEnabled(bool enable)
{
    averagingEnabled = enable;
    averagedData.clear();
    avg_count = 0;
}

void PlotWidget::setAveragingNumber(int number)
{
    averaging_number = number;
    averagedData.clear();
    avg_count = 0;
}

// averaging getters
bool PlotWidget::getAveragingEnabled() const { return averagingEnabled;}
int PlotWidget::getAveragingNumber() const { return averaging_number;}
int PlotWidget::getAverageCount() const { return avg_count;}


// ---------------- Sweep ----------------
void PlotWidget::setSweep(double startFreq, double endFreq, double stepSize)
{
    m_startFreq = startFreq;
    m_endFreq = endFreq;
    m_stepSize = stepSize;

    totalSteps = static_cast<int>((m_endFreq - m_startFreq) / m_stepSize);
    if(DEBUG_MSG_ON) qDebug() << "Total Sweep Steps:" << totalSteps;

    sweepBuffer.clear();
    currentStep = 0;
}

// ---------------- FFT Generation ----------------
void PlotWidget::generateRandomFFT(QVector<float> &frame)
{
    frame.resize(FFT_POINTS);
    for(int i=0; i<FFT_POINTS; ++i)
        frame[i] = QRandomGenerator::global()->bounded(20);

    frame[300] += 100; // fixed peak
}

void PlotWidget::generateFFTFromFile(QVector<float> &frame)
{
    frame.clear();
    frame.reserve(FFT_POINTS);

    QFile file("/home/selaka/Spectrum_Analyzer_UI/UI_1/untitled/fft_output_2.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        if(DEBUG_MSG_ON)
            qDebug() << "Failed to open file:" << file.errorString();
        return;
    }

    QTextStream in(&file);
    bool firstSample = true;
    int count = 0;

    while(!in.atEnd() && count < FFT_POINTS) {
        QString line = in.readLine().trimmed();
        if(line.isEmpty()) continue;

        bool ok;
        uint32_t hexVal = line.toUInt(&ok, 16);
        if(!ok) continue;

        float f;
        std::memcpy(&f, &hexVal, sizeof(float));

        if(firstSample) {
            firstSample = false;
            continue;
        }

        float mag = std::sqrt(f);
        mag = (2.0f * mag) / 1024.0f;

        if(displayMode == dB)
            frame.append(20.0f * std::log10(mag + 1e-12f));
        else
            frame.append(mag);

        count++;
    }

    file.close();
    qDebug() << "Loaded FFT frame. Mode:" << (displayMode == dB ? "dB" : "Linear");
}

void PlotWidget::generateFFTFromDMA(QVector<float> &frame)
{
    frame.resize(FFT_POINTS);

    int fd = ::open(DEVICE_PATH, O_RDONLY);
    if(fd<0) {
        if(DEBUG_MSG_ON) qDebug() << "Failed to open DMA device";
        frame.fill(0);
        return;
    }

    uint32_t rx_buf[NUM_SAMPLES];
    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES*sizeof(uint32_t));
    ::close(fd);

    if(ret != NUM_SAMPLES*sizeof(uint32_t)) {
        if(DEBUG_MSG_ON) qDebug() << "Failed to read all DMA samples";
        frame.fill(0);
        return;
    }

    for(int i=0; i<FFT_POINTS; ++i) {
        uint32_t val = rx_buf[i+1];
        float f;
        std::memcpy(&f, &val, sizeof(float));
        frame[i] = std::abs(f);
    }

    if(DEBUG_MSG_ON)
        qDebug() << "DMA FFT frame loaded";
}

// ---------------- Downsample ----------------
void PlotWidget::downsampleSweep()
{
    if(sweepBuffer.isEmpty()) return;

    int totalBins = sweepBuffer.size();
    float ratio = totalBins / float(FFT_POINTS);

    for(int i=0;i<FFT_POINTS;++i) {
        int start = i*ratio;
        int end = (i+1)*ratio;
        if(end>totalBins) end = totalBins;

        if(samplingMethod==MaxPooling) {
            float maxVal = 0;
            for(int j=start;j<end;++j)
                maxVal = std::max(maxVal, sweepBuffer[j]);
            data[i] = maxVal;
        }
        else {
            float sum=0;
            int count=0;
            for(int j=start;j<end;++j){
                sum+=sweepBuffer[j];
                count++;
            }
            data[i] = (count>0) ? sum/count : 0;
        }
    }
}

// ---------------- Timer slot ----------------
void PlotWidget::updateData()
{
    if(totalSteps <= 0) return;

    // Sweep complete
    if(currentStep >= totalSteps) {

        if(DEBUG_MSG_ON)
            qDebug() << "Sweep Complete";

        // Downsample sweep
        downsampleSweep();

        // Reset sweep buffer
        sweepBuffer.clear();
        currentStep = 0;

        QVector<float> *plotData = &data;

        // ---------------- Averaging ----------------
        if(averagingEnabled) {

            if(averagedData.isEmpty()) {

                averagedData.resize(data.size());
                for(int i = 0; i < data.size(); i++)
                    averagedData[i] = data[i];

                avg_count = 1;
            }
            else {

                int n = std::min(avg_count + 1, averaging_number);

                for(int i = 0; i < data.size(); i++) {
                    averagedData[i] =
                        (averagedData[i] * (n - 1) + data[i]) / n;
                }

                avg_count = n;
            }

            plotData = &averagedData;
        }
        // ------------------------------------------------


        // Update chart
        QVector<QPointF> points;
        points.reserve(plotData->size());

        for(int i = 0; i < plotData->size(); i++)
            points.append(QPointF(i, (*plotData)[i]));

        series->replace(points);


        // Update Y axis
        float maxVal = *std::max_element(plotData->begin(), plotData->end());
        float minVal = *std::min_element(plotData->begin(), plotData->end());

        axisY->setRange(minVal, maxVal);

        return;
    }


    // ---------------- Continue Sweep ----------------

    double currentFreq = m_startFreq + currentStep * m_stepSize;

    if(DEBUG_MSG_ON)
        qDebug() << "Sweep at:" << currentFreq << "MHz";

    QVector<float> frame;

    switch(dataSource) {

        case RandomData:
            qDebug() << "Using random data set";
            generateRandomFFT(frame);
            break;

        case FileData:
            qDebug() << "Using FFT data from file";
            generateFFTFromFile(frame);
            break;

        case DmaData:
            qDebug() << "Using DMA FFT data";
            generateFFTFromDMA(frame);
            break;
    }

    sweepBuffer.append(frame);

    currentStep++;
}

void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    if(chartView) chartView->setGeometry(rect());
}
