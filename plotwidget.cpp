#include "plotwidget.h"
#include <QPainter>
#include <QRandomGenerator>
#include <QResizeEvent>

PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    data.resize(100);
    data.fill(0);

    // Timer to update graph
    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
    timer.start(30);
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

    // Grid style: slightly brighter and thicker
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

void PlotWidget::updateData()
{
    // Shift data to the left
    for (int i = 0; i < data.size() - 1; ++i)
        data[i] = data[i + 1];

    // Add new random value
    data[data.size() - 1] = QRandomGenerator::global()->bounded(height());

    update();  // repaint
}

void PlotWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);

    // Draw static grid from cached pixmap
    painter.drawPixmap(0, 0, background);

    // Draw dynamic trace
    painter.setPen(QPen(Qt::green, 2));

    int n = data.size();
    int w = width();
    int h = height();

    for (int i = 0; i < n - 1; ++i)
    {
        int x1 = i * w / n;
        int y1 = h - data[i];
        int x2 = (i + 1) * w / n;
        int y2 = h - data[i + 1];

        painter.drawLine(x1, y1, x2, y2);
    }
}

// Regenerate grid whenever widget is resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}
