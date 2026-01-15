#include "plotwidget.h"
#include <QPainter>
#include <QRandomGenerator>

PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    data.resize(100); // 100 points
    for(int i = 0; i < data.size(); ++i)
        data[i] = 0;

    // Update graph every 50ms
    connect(&timer, &QTimer::timeout, this, &PlotWidget::updateData);
    timer.start(30);
}

void PlotWidget::updateData()
{
    // Shift data to the left
    for(int i = 0; i < data.size() - 1; ++i)
        data[i] = data[i+1];

    // Add a new random value (range: 0 to widget height)
    data[data.size()-1] = QRandomGenerator::global()->bounded(height());

    update(); // trigger repaint
}

void PlotWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.fillRect(rect(), Qt::black); // black background

    painter.setPen(Qt::green); // green line

    for(int i = 0; i < data.size() - 1; ++i)
    {
        int x1 = i * width() / data.size();
        int y1 = height() - data[i];
        int x2 = (i+1) * width() / data.size();
        int y2 = height() - data[i+1];

        painter.drawLine(x1, y1, x2, y2);
    }
}
