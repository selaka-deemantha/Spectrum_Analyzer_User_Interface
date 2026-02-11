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

    int w = width();
        int h = height();

        // 2️⃣ Draw grid
        painter.setPen(QPen(QColor(80, 80, 80), 1.5));

        const int verticalDivs = 10;
        const int horizontalDivs = 8;

        // Vertical grid lines
        for (int i = 1; i < verticalDivs; ++i) {
            int x = i * w / verticalDivs;
            painter.drawLine(x, 0, x, h);
        }

        // Horizontal grid lines
        for (int i = 1; i < horizontalDivs; ++i) {
            int y = i * h / horizontalDivs;
            painter.drawLine(0, y, w, y);
        }

        painter.setPen(QPen(Qt::green, 2));

        for(int i = 0; i < data.size() - 1; ++i) {
            int x1 = i * width() / data.size();
            int y1 = height() - data[i];
            int x2 = (i+1) * width() / data.size();
            int y2 = height() - data[i+1];

            painter.drawLine(x1, y1, x2, y2);
        }
}
