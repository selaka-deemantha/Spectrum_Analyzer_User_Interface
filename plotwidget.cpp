#include "plotwidget.h"

#include <QPainter>
#include <QResizeEvent>
#include <QRandomGenerator>
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <algorithm>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>


#define DEVICE_PATH "/dev/fft_dma"
#define NUM_SAMPLES 1024


bool PlotWidget::DEBUG_MSG_ON = false;

PlotWidget::PlotWidget(QWidget *parent)
    : QWidget(parent)
{
    data.resize(FFT_POINTS);
    data.fill(0);

    connect(&timer, &QTimer::timeout,
            this, &PlotWidget::updateData);

    timer.start(10);
}

// this function set the debugging mode
void PlotWidget::setDataSource(DataSource source)
{
    dataSource = source;
}
// this function will set the downsampling method
void PlotWidget::setDownSamplingMethod(DownSamplingMethod source)
{
    samplingMethod = source;
}
// this function will set the display mode (dB or Linear scale)
void PlotWidget::selectOutputDisplayMode(DisplayMethod source)
{
    displayMode = source;

}
void PlotWidget::generateFFTFromFile(QVector<float> &frame)
{
    frame.clear();
    frame.reserve(FFT_POINTS);

    QFile file("/home/selaka/Spectrum_Analyzer_UI/UI_1/fft_output_2.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        if (DEBUG_MSG_ON)
            qDebug() << "Failed to open file:" << file.errorString();
        return;
    }

    QTextStream in(&file);
    bool firstSample = true;  // skip DC
    int count = 0;

    while (!in.atEnd() && count < FFT_POINTS)
    {
        QString line = in.readLine().trimmed();
        if (line.isEmpty()) continue;

        bool ok;
        uint32_t hexVal = line.toUInt(&ok, 16);
        if (!ok) continue;

        float f;
        std::memcpy(&f, &hexVal, sizeof(float));

        if (firstSample)
        {
            firstSample = false;  // skip DC
            continue;
        }

        // Power → magnitude
        float mag = std::sqrt(f);

        // Single-sided scaling
        mag = (2.0f * mag) / 1024.0f;

        if (displayMode == dB)
        {
            float magDb = 20.0f * std::log10(mag + 1e-12f);
            frame.append(magDb);
        }
        else
        {
            frame.append(mag);  // linear mode
        }

        count++;
    }

    file.close();

//    if (DEBUG_MSG_ON)
     qDebug() << "i'm called..... Loaded FFT frame. Mode:" << (displayMode == dB ? "dB" : "Linear");
}

void PlotWidget::setSweep(double startFreq, double endFreq, double stepSize)
{
    m_startFreq = startFreq;
    m_endFreq   = endFreq;
    m_stepSize  = stepSize;

    totalSteps = static_cast<int>((m_endFreq - m_startFreq) / m_stepSize);
    if(DEBUG_MSG_ON) qDebug() << "Total Sweep Steps:" << totalSteps;

    sweepBuffer.clear();
    currentStep = 0;
}

void PlotWidget::generateRandomFFT(QVector<float> &frame)
{
    frame.resize(FFT_POINTS);

    for (int i = 0; i < FFT_POINTS; ++i)
        frame[i] = QRandomGenerator::global()->bounded(20);

    // Add fixed peak for visibility
    frame[300] += 100;
}

void PlotWidget::generateFFTFromDMA(QVector<float> &frame)
{
    frame.resize(FFT_POINTS);

    int fd = ::open(DEVICE_PATH, O_RDONLY);
    if (fd < 0)
    {
        if (DEBUG_MSG_ON) qDebug() << "Failed to open DMA device";
        frame.fill(0);
        return;
    }

    uint32_t rx_buf[NUM_SAMPLES];

    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(uint32_t));

    ::close(fd);

    if (ret != NUM_SAMPLES * sizeof(uint32_t))
    {
        if (DEBUG_MSG_ON) qDebug() << "Failed to read all DMA samples";
        frame.fill(0);
        return;
    }

    // Skip DC and take first FFT_POINTS bins
    for (int i = 0; i < FFT_POINTS; ++i)
    {
        uint32_t val = rx_buf[i + 1];   // skip DC
        float f;
        std::memcpy(&f, &val, sizeof(float));

        frame[i] = std::abs(f);
    }

    if (DEBUG_MSG_ON)
        qDebug() << "DMA FFT frame loaded";
}

void PlotWidget::updateData()
{
    if (totalSteps <= 0)
        return;

    if (currentStep >= totalSteps)
    {
        if(DEBUG_MSG_ON) qDebug() << "Sweep Complete";
        qDebug() << "display mode " << displayMode;

        downsampleSweep();

        sweepBuffer.clear();
        currentStep = 0;

        update();
        return;
    }

    double currentFreq = m_startFreq + currentStep * m_stepSize;
    if(DEBUG_MSG_ON) qDebug() << "Sweep at:" << currentFreq << "MHz";

    QVector<float> frame;

    switch (dataSource)
    {
        case RandomData:
            //if(DEBUG_MSG_ON) qDebug() << "Using random data set";
            qDebug() << "Using random data set";
            generateRandomFFT(frame);
            break;

        case FileData:
            //if(DEBUG_MSG_ON) qDebug() << "Using FFT data from file";
            qDebug() << "Using FFT data from file";
            generateFFTFromFile(frame);
            break;

        case DmaData:
            //if(DEBUG_MSG_ON) qDebug() << "Using DMA FFT data";
            qDebug() << "Using DMA FFT data";
            generateFFTFromDMA(frame);  // you can also convert to dB here
            break;
    }

    sweepBuffer.append(frame);
    currentStep++;
    update();  // refresh display
}

void PlotWidget::downsampleSweep()
{
    if (sweepBuffer.isEmpty())
        return;

    int totalBins = sweepBuffer.size();
    float ratio = totalBins / float(FFT_POINTS);

    if(DEBUG_MSG_ON) {
        qDebug() << "total bins in sweep buffer :" << totalBins;
        qDebug() << "Downsample ratio :" << ratio;
    }

    for (int i = 0; i < FFT_POINTS; ++i)
    {
        int start = i * ratio;
        int end   = (i + 1) * ratio;

        if (end > totalBins)
            end = totalBins;

        if (samplingMethod == MaxPooling)
        {
            float maxVal = 0;
            for (int j = start; j < end; ++j)
                maxVal = std::max(maxVal, sweepBuffer[j]);

            data[i] = maxVal;
        }
        else if (samplingMethod == AveragePooling)
        {
            float sum = 0;
            int count = 0;
            for (int j = start; j < end; ++j)
            {
                sum += sweepBuffer[j];
                count++;
            }

            data[i] = (count > 0) ? (sum / count) : 0;
        }
    }
}

void PlotWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.drawPixmap(0, 0, background);

    painter.setPen(QPen(Qt::green, 2));

    int w = width();
    int h = height();

    // Compute min/max as floats
    float maxVal = *std::max_element(data.begin(), data.end());
    float minVal = *std::min_element(data.begin(), data.end());
    float range = maxVal - minVal;
    if (range == 0) range = 1.0f;

    for (int i = 0; i < data.size() - 1; ++i)
    {
        float x1 = i * w / float(data.size());
        float y1 = h - ((data[i] - minVal) / range) * h;

        float x2 = (i + 1) * w / float(data.size());
        float y2 = h - ((data[i+1] - minVal) / range) * h;

        painter.drawLine(QPointF(x1, y1), QPointF(x2, y2));
    }
}

void PlotWidget::generateGrid()
{
    if (width() <= 0 || height() <= 0) return;

    background = QPixmap(size());
    background.fill(Qt::black);

    QPainter p(&background);

    int w = width();
    int h = height();

    p.setPen(QPen(QColor(90, 90, 90), 2));

    for (int i = 1; i < 10; ++i)
        p.drawLine(i * w / 10, 0, i * w / 10, h);

    for (int i = 1; i < 8; ++i)
        p.drawLine(0, i * h / 8, w, i * h / 8);
}

void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}
