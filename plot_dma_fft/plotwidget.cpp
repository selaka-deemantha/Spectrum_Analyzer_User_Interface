//#include "plotwidget.h"
//#include <QPainter>
//#include <QRandomGenerator>
//#include <QResizeEvent>

//PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
//{
//    data.resize(100);
//    data.fill(0);

//    // Timer to update graph
//    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
//    timer.start(30);
//}

//// Draw grid on background pixmap
//void PlotWidget::generateGrid()
//{
//    if (width() <= 0 || height() <= 0) return;

//    background = QPixmap(size());
//    background.fill(Qt::black);

//    QPainter p(&background);

//    int w = width();
//    int h = height();

//    // Grid style: slightly brighter and thicker
//    p.setPen(QPen(QColor(90, 90, 90), 2));

//    const int verticalDivs = 10;
//    const int horizontalDivs = 8;

//    // Vertical lines
//    for (int i = 1; i < verticalDivs; ++i)
//        p.drawLine(i * w / verticalDivs, 0, i * w / verticalDivs, h);

//    // Horizontal lines
//    for (int i = 1; i < horizontalDivs; ++i)
//        p.drawLine(0, i * h / horizontalDivs, w, i * h / horizontalDivs);
//}

//void PlotWidget::updateData()
//{
//    // Shift data to the left
//    for (int i = 0; i < data.size() - 1; ++i)
//        data[i] = data[i + 1];

//    // Add new random value
//    data[data.size() - 1] = QRandomGenerator::global()->bounded(height());

//    update();  // repaint
//}

//void PlotWidget::paintEvent(QPaintEvent *)
//{
//    QPainter painter(this);

//    // Draw static grid from cached pixmap
//    painter.drawPixmap(0, 0, background);

//    // Draw dynamic trace
//    painter.setPen(QPen(Qt::green, 2));

//    int n = data.size();
//    int w = width();
//    int h = height();

//    for (int i = 0; i < n - 1; ++i)
//    {
//        int x1 = i * w / n;
//        int y1 = h - data[i];
//        int x2 = (i + 1) * w / n;
//        int y2 = h - data[i + 1];

//        painter.drawLine(x1, y1, x2, y2);
//    }
//}

//// Regenerate grid whenever widget is resized
//void PlotWidget::resizeEvent(QResizeEvent *event)
//{
//    QWidget::resizeEvent(event);
//    generateGrid();
//}


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
#define FFT_POINTS 512  // positive frequencies (excluding DC)

PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    data.resize(FFT_POINTS);
    data.fill(0);

    // Timer to update graph
    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
    timer.start(30); // 30 ms interval
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

// Read DMA samples and fill data vector
void PlotWidget::readDmaSamples()
{
    int fd = ::open(DEVICE_PATH, O_RDONLY);
    if (fd < 0) {
        qDebug() << "Failed to open DMA device";
        return;
    }

    uint32_t rx_buf[NUM_SAMPLES];
    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(uint32_t));
    if (ret != NUM_SAMPLES * sizeof(uint32_t)) {
        qDebug() << "Failed to read all samples";
        ::close(fd);
        return;
    }
    ::close(fd);

    // Skip DC and take first 512 points
    for (int i = 0; i < FFT_POINTS; ++i)
    {
        uint32_t val = rx_buf[i + 1]; // skip first sample (DC)
        float f;
        std::memcpy(&f, &val, sizeof(float));
        data[i] = static_cast<int>(std::abs(f));  // linear magnitude
    }
}

// Timer slot: read DMA and repaint
void PlotWidget::updateData()
{
    readDmaSamples();
    update(); // trigger paintEvent
}

// Paint line plot
void PlotWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);

    // Draw static grid
    painter.drawPixmap(0, 0, background);

    // Draw dynamic trace
    painter.setPen(QPen(Qt::green, 2));

    int n = data.size();
    int w = width();
    int h = height();

    // auto-scale Y-axis
    int maxVal = *std::max_element(data.begin(), data.end());
    int minVal = *std::min_element(data.begin(), data.end());
    int range = maxVal - minVal;
    if (range == 0) range = 1;

    for (int i = 0; i < n - 1; ++i)
    {
        float x1 = i * w / float(n);
        float y1 = h - ((data[i] - minVal) / float(range)) * h;
        float x2 = (i + 1) * w / float(n);
        float y2 = h - ((data[i+1] - minVal) / float(range)) * h;

        painter.drawLine(QPointF(x1, y1), QPointF(x2, y2));
    }
}

// Regenerate grid when resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}
