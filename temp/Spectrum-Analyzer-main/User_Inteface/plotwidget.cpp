////// code for reading and plotting the dma fft data

////#include "plotwidget.h"
////#include <QPainter>
////#include <QResizeEvent>
////#include <QDebug>
////#include <fcntl.h>
////#include <unistd.h>
////#include <cstring>
////#include <algorithm>

////#define DEVICE_PATH "/dev/fft_dma"
////#define NUM_SAMPLES 1024
////#define FFT_POINTS 508  // positive frequencies (excluding DC)

////PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
////{
////    data.resize(FFT_POINTS);
////    data.fill(0);

////    // Timer to update graph
////    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
//////    timer.start(30); // 30 ms interval
////}

////void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
////{
////    minFreq = minF;
////    maxFreq = maxF;
////    stepSize = step;
////    timer.start(30);
////}

////void PlotWidget::stopAcquisition()
////{
////    timer.stop();
////}


////// Draw grid on background pixmap
////void PlotWidget::generateGrid()
////{
////    if (width() <= 0 || height() <= 0) return;

////    background = QPixmap(size());
////    background.fill(Qt::black);

////    QPainter p(&background);

////    int w = width();
////    int h = height();

////    // Grid style
////    p.setPen(QPen(QColor(90, 90, 90), 2));

////    const int verticalDivs = 10;
////    const int horizontalDivs = 8;

////    // Vertical lines
////    for (int i = 1; i < verticalDivs; ++i)
////        p.drawLine(i * w / verticalDivs, 0, i * w / verticalDivs, h);

////    // Horizontal lines
////    for (int i = 1; i < horizontalDivs; ++i)
////        p.drawLine(0, i * h / horizontalDivs, w, i * h / horizontalDivs);
////}

////// Read DMA samples and fill data vector
////void PlotWidget::readDmaSamples()
////{
////    int fd = ::open(DEVICE_PATH, O_RDONLY);
////    if (fd < 0) {
////        qDebug() << "Failed to open DMA device";
////        return;
////    }

////    float rx_buf[NUM_SAMPLES];

////    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(float));
////    if (ret != NUM_SAMPLES * sizeof(uint32_t)) {
////        qDebug() << "Failed to read all samples";
////        ::close(fd);
////        return;
////    }
////    ::close(fd);

////    for (int i = 0; i < FFT_POINTS; ++i)
////    {
////        // Use the same offset logic (i+4) as your QtCharts code
////        float magnitude = rx_buf[i + 4];

////        // Clean up invalid hardware data (NaN or Infinity)
////        if (!qIsFinite(magnitude))
////            magnitude = 0.0f;

////        data[i] = magnitude;
////    }
////}

////// Timer slot: read DMA and repaint
////void PlotWidget::updateData()
////{
////    readDmaSamples();
////    update(); // trigger paintEvent
////}

////void PlotWidget::paintEvent(QPaintEvent *)
////{
////    QPainter painter(this);
////    painter.drawPixmap(0, 0, background);
////    painter.setPen(QPen(Qt::green, 2));

////    int n = data.size();
////    float w = width();
////    float h = height();

////    // Use floats for auto-scaling math
////    float maxVal = *std::max_element(data.begin(), data.end());
////    float minVal = *std::min_element(data.begin(), data.end());
////    float range = maxVal - minVal;

////    // Avoid division by zero
////    if (range < 0.0001f) range = 1.0f;

////    for (int i = 0; i < n - 1; ++i)
////    {
////        // Calculate X positions
////        float x1 = i * w / n;
////        float x2 = (i + 1) * w / n;

////        // Linear scaling: (Value - Min) / Range gives a 0.0 to 1.0 percentage
////        // Multiplying by 'h' maps it to the widget height
////        float y1 = h - ((data[i] - minVal) / range) * h;
////        float y2 = h - ((data[i+1] - minVal) / range) * h;

////        painter.drawLine(QPointF(x1, y1), QPointF(x2, y2));
////    }
////}

////// Regenerate grid when resized
////void PlotWidget::resizeEvent(QResizeEvent *event)
////{
////    QWidget::resizeEvent(event);
////    generateGrid();
////}





//#include "plotwidget.h"
//#include <QPainter>
//#include <QResizeEvent>
//#include <QDebug>
//#include <fcntl.h>
//#include <unistd.h>
//#include <cstring>
//#include <algorithm>

//#define DEVICE_PATH "/dev/fft_dma"
//#define NUM_SAMPLES 1024
//#define FFT_POINTS 508  // positive frequencies (excluding DC)

//PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
//{
////    data.resize(FFT_POINTS*segments);
////    data.fill(0);

//    // Timer to update graph
//    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
////    timer.start(30); // 30 ms interval
//}

//void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
//{
//    minFreq = minF;
//    maxFreq = maxF;
//    stepSize = step;

//    segments = (maxFreq - minFreq) / stepSize;
//    if (segments <= 0) segments = 1;

//    data.resize(FFT_POINTS * segments);
//    data.fill(0.0f);
//    currentStepIndex = 0;

//    timer.start(30);
//}

//void PlotWidget::stopAcquisition()
//{
//    timer.stop();
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

//    // Grid style
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

//// Read DMA samples and fill data vector
//void PlotWidget::readDmaSamples()
//{
//    int fd = ::open(DEVICE_PATH, O_RDONLY);
//    if (fd < 0) {
//        qDebug() << "Failed to open DMA device";
//        return;
//    }

//    float rx_buf[NUM_SAMPLES];

//    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(float));
//    if (ret != NUM_SAMPLES * sizeof(uint32_t)) {
//        qDebug() << "Failed to read all samples";
//        ::close(fd);
//        return;
//    }
//    ::close(fd);

////    for (int i = 0; i < FFT_POINTS; ++i)
////    {
////        // Use the same offset logic (i+4) as your QtCharts code
////        float magnitude = rx_buf[i + 4];

////        // Clean up invalid hardware data (NaN or Infinity)
////        if (!qIsFinite(magnitude))
////            magnitude = 0.0f;

////        data[i] = magnitude;
////    }

//    // Calculate where this specific batch starts
//    int offset = currentStepIndex * FFT_POINTS;

//    for (int i = 0; i < FFT_POINTS; ++i) {
//        float magnitude = rx_buf[i + 4];
//        if (!qIsFinite(magnitude)) magnitude = 0.0f;

//        data[offset + i] = magnitude;
//    }

//    // Move to next segment, wrap around if finished
//    currentStepIndex = (currentStepIndex + 1) % segments;
//}

//// Timer slot: read DMA and repaint
//void PlotWidget::updateData()
//{
//    readDmaSamples();
//    update(); // trigger paintEvent
//}

//void PlotWidget::paintEvent(QPaintEvent *)
//{
//    QPainter painter(this);
//    painter.drawPixmap(0, 0, background);
//    painter.setPen(QPen(Qt::green, 2));

//    int n = data.size();
//    float w = width();
//    float h = height();

//    // Use floats for auto-scaling math
//    float maxVal = *std::max_element(data.begin(), data.end());
//    float minVal = *std::min_element(data.begin(), data.end());
//    float range = maxVal - minVal;

//    // Avoid division by zero
//    if (range < 0.0001f) range = 1.0f;

//    for (int i = 0; i < n - 1; ++i)
//    {
//        // Calculate X positions
//        float x1 = i * w / n;
//        float x2 = (i + 1) * w / n;

//        // Linear scaling: (Value - Min) / Range gives a 0.0 to 1.0 percentage
//        // Multiplying by 'h' maps it to the widget height
//        float y1 = h - ((data[i] - minVal) / range) * h;
//        float y2 = h - ((data[i+1] - minVal) / range) * h;

//        painter.drawLine(QPointF(x1, y1), QPointF(x2, y2));
//    }
//}

//// Regenerate grid when resized
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
#define FFT_POINTS 508  // positive frequencies (excluding DC)

PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    rubberBand = new QRubberBand(QRubberBand::Rectangle, this);
    setMouseTracking(true);

    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
}

void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
{
    minFreq = minF;
    maxFreq = maxF;
    stepSize = step;

    segments = (maxFreq - minFreq) / stepSize;
    if (segments <= 0) segments = 1;

    data.resize(FFT_POINTS * segments);
    data.fill(0.0f);
    viewStart = 0;
    viewEnd = data.size();
    currentStepIndex = 0;

    timer.start(30);
}

void PlotWidget::stopAcquisition()
{
    timer.stop();
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

    float rx_buf[NUM_SAMPLES];

    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(float));
    if (ret != NUM_SAMPLES * sizeof(uint32_t)) {
        qDebug() << "Failed to read all samples";
        ::close(fd);
        return;
    }
    ::close(fd);

//    for (int i = 0; i < FFT_POINTS; ++i)
//    {
//        // Use the same offset logic (i+4) as your QtCharts code
//        float magnitude = rx_buf[i + 4];

//        // Clean up invalid hardware data (NaN or Infinity)
//        if (!qIsFinite(magnitude))
//            magnitude = 0.0f;

//        data[i] = magnitude;
//    }

    // Calculate where this specific batch starts
    int offset = currentStepIndex * FFT_POINTS;

    for (int i = 0; i < FFT_POINTS; ++i) {
        float magnitude = rx_buf[i + 4];
        if (!qIsFinite(magnitude)) magnitude = 0.0f;

        data[offset + i] = magnitude;
    }

    // Move to next segment, wrap around if finished
    currentStepIndex = (currentStepIndex + 1) % segments;
}

// Timer slot: read DMA and repaint
void PlotWidget::updateData()
{
    readDmaSamples();
    update(); // trigger paintEvent
}

//void PlotWidget::paintEvent(QPaintEvent *)
//{
//    QPainter painter(this);
//    painter.drawPixmap(0, 0, background);
//    painter.setPen(QPen(Qt::green, 2));

//    int n = viewEnd - viewStart;
//    if (n <= 1) return;
//    float w = width();
//    float h = height();

//    // Use floats for auto-scaling math
//    float maxVal = *std::max_element(data.begin(), data.end());
//    float minVal = *std::min_element(data.begin(), data.end());
//    float range = maxVal - minVal;

//    // Avoid division by zero
//    if (range < 0.0001f) range = 1.0f;

//    for (int i = viewStart; i < viewEnd - 1; ++i)
//    {
//        // Calculate X positions
//        float x1 = (i - viewStart) * w / n;
//        float x2 = (i + 1 - viewStart) * w / n;

//        // Linear scaling: (Value - Min) / Range gives a 0.0 to 1.0 percentage
//        // Multiplying by 'h' maps it to the widget height
//        float y1 = h - ((data[i] - minVal) / range) * h;
//        float y2 = h - ((data[i+1] - minVal) / range) * h;

//        painter.drawLine(QPointF(x1, y1), QPointF(x2, y2));
//    }
//}

void PlotWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.drawPixmap(0,0,background);
    painter.setPen(QPen(Qt::green,2));

    int n = viewEnd - viewStart;
    if(n<=1) return;

    float w = width();
    float h = height();

    // ✅ Only use visible range for Y scaling
    float maxVal = *std::max_element(data.begin()+viewStart, data.begin()+viewEnd);
    float minVal = *std::min_element(data.begin()+viewStart, data.begin()+viewEnd);
    float range = maxVal - minVal;
    if(range<0.0001f) range=1.0f;

    for(int i=viewStart;i<viewEnd-1;++i){
        float x1 = (i - viewStart) * w / n;
        float x2 = (i+1 - viewStart) * w / n;

        float y1 = h - ((data[i]-minVal)/range)*h;
        float y2 = h - ((data[i+1]-minVal)/range)*h;

        painter.drawLine(QPointF(x1,y1), QPointF(x2,y2));
    }
}

// Regenerate grid when resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}

void PlotWidget::mousePressEvent(QMouseEvent *event)
{
    zoomOrigin = event->pos();
    rubberBand->setGeometry(QRect(zoomOrigin, QSize()));
    rubberBand->show();
}

void PlotWidget::mouseMoveEvent(QMouseEvent *event)
{
    rubberBand->setGeometry(QRect(zoomOrigin, event->pos()).normalized());
}

//void PlotWidget::mouseReleaseEvent(QMouseEvent *event)
//{
//    QRect rect = QRect(zoomOrigin, event->pos()).normalized();
//    rubberBand->hide();

//    if (rect.width() < 10)
//        return;

//    float w = width();

//    int newStart = viewStart + (rect.left() / w) * (viewEnd - viewStart);
//    int newEnd   = viewStart + (rect.right() / w) * (viewEnd - viewStart);

//    viewStart = std::max(0, newStart);
//    viewEnd   = std::min((int)data.size(), newEnd);

//    update();
//}

void PlotWidget::mouseReleaseEvent(QMouseEvent *event)
{
    rubberBand->hide();

    QPoint endPoint = event->pos();

    int dx = endPoint.x() - zoomOrigin.x();

    // If drag distance too small → ignore
    if (abs(dx) < 10)
        return;

    // 👉 Drag Right = Zoom In
    if (dx > 0)
    {
        QRect rect = QRect(zoomOrigin, endPoint).normalized();

        float w = width();

        int newStart = viewStart + (rect.left() / w) * (viewEnd - viewStart);
        int newEnd   = viewStart + (rect.right() / w) * (viewEnd - viewStart);

        viewStart = std::max(0, newStart);
        viewEnd   = std::min((int)data.size(), newEnd);
    }
    // 👉 Drag Left = Zoom Out
    else
    {
        int currentRange = viewEnd - viewStart;
        int expand = currentRange * 0.5;   // zoom out by 50%

        viewStart = std::max(0, viewStart - expand);
        viewEnd   = std::min((int)data.size(), viewEnd + expand);
    }

    update();
}

void PlotWidget::mouseDoubleClickEvent(QMouseEvent *)
{
    viewStart = 0;
    viewEnd = data.size();
    update();
}
