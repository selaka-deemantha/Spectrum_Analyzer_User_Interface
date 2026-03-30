#include "plotwidget.h"
#include <QMouseEvent>
#include <algorithm>

// ---------------- Rubberband Methods ----------------
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

// ---------------- Zoom Methods ----------------
void PlotWidget::zoomIn()
{
    int currentRange = viewEnd - viewStart;
    if (currentRange <= 10) return;  // prevent over zoom

    int center = viewStart + currentRange / 2;

    int newRange = currentRange * 0.5;   // zoom in by 50%

    viewStart = center - newRange / 2;
    viewEnd   = center + newRange / 2;

    viewStart = std::max(0, viewStart);
    viewEnd   = std::min((int)data.size(), viewEnd);

    update();
}

void PlotWidget::zoomOut()
{
    int currentRange = viewEnd - viewStart;

    int center = viewStart + currentRange / 2;

    int newRange = currentRange * 2;   // zoom out 2x

    viewStart = center - newRange / 2;
    viewEnd   = center + newRange / 2;

    viewStart = std::max(0, viewStart);
    viewEnd   = std::min((int)data.size(), viewEnd);

    update();
}

void PlotWidget::resetView()
{
    // Restore the view range to the full size of the data vector
    viewStart = 0;
    viewEnd = data.size();

    // Trigger a redraw of the plot
    update();
}
