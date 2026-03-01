#include "plotwidget.h"

#include <QPainter>
#include <QResizeEvent>
#include <QRandomGenerator>
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <algorithm>

PlotWidget::PlotWidget(QWidget *parent)
    : QWidget(parent)
{
    data.resize(FFT_POINTS);
    data.fill(0);

    connect(&timer, &QTimer::timeout,
            this, &PlotWidget::updateData);

    timer.start(50);
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

void PlotWidget::loadFFTFromFile(const QString &filename)
{
    qDebug() << "Trying to open file: " << filename;
    QFile file(filename);

    if (!file.exists())
    {
        qDebug() << "File does NOT exist!";
        return;
    }

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qDebug() << "Failed to open FFT file!";
        qDebug() << "Error:" << file.errorString();
        return;
    }

    qDebug() << "File opened successfully!";

    QTextStream in(&file);
    fileFFTData.clear();
    fileIndex = 0;

    while (!in.atEnd())
    {
        QString line = in.readLine().trimmed();
        if (line.isEmpty())
            continue;

        // Read as decimal float
        bool ok;
        float value = line.toFloat(&ok);
        if (ok)
        {
            // Optional: scale down large values for plotting
            value /= 1e12f;
            fileFFTData.append(value);
        }
    }

    file.close();

    qDebug() << "Loaded FFT samples:" << fileFFTData.size();
}

void PlotWidget::setSweep(double startFreq,
                          double endFreq,
                          double stepSize)
{
    m_startFreq = startFreq;
    m_endFreq   = endFreq;
    m_stepSize  = stepSize;

    totalSteps = static_cast<int>((m_endFreq - m_startFreq) / m_stepSize);
    qDebug() << "Total Sweep Steps:" << totalSteps;

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

void PlotWidget::generateFFTFromFile(QVector<float> &frame)
{
    frame.resize(FFT_POINTS);

    if (fileFFTData.isEmpty())
        return;

    for (int i = 0; i < FFT_POINTS; ++i)
    {
        if (fileIndex >= fileFFTData.size())
            fileIndex = 0;

        frame[i] = fileFFTData[fileIndex++];
    }
    qDebug() << "Copied fft data from file to frame vector";
}

void PlotWidget::updateData()
{
    if (totalSteps <= 0)
        return;

    if (currentStep >= totalSteps)
    {
        qDebug() << "Sweep Complete";

        downsampleSweep();

        sweepBuffer.clear();
        currentStep = 0;
        totalSteps = 0;

        update();
        return;
    }

    double currentFreq = m_startFreq + currentStep * m_stepSize;
    qDebug() << "Sweep at:" << currentFreq << "MHz";

    QVector<float> frame;

    if (dataSource == RandomData)
    {
        qDebug() << "Using random data set";
        generateRandomFFT(frame);
    }
    else
    {
        qDebug() << "Using FFT data from file";
        generateFFTFromFile(frame);
    }

    sweepBuffer.append(frame);

    currentStep++;
}

void PlotWidget::downsampleSweep()
{
    if (sweepBuffer.isEmpty())
        return;

    int totalBins = sweepBuffer.size();
    float ratio = totalBins / float(FFT_POINTS);

    qDebug() << "total bins in sweep buffer :" << totalBins;
    qDebug() << "Downsample ratio :" << ratio;

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
