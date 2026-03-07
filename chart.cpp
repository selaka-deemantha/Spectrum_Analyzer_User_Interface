#include "chart.h"

Chart::Chart(QGraphicsItem *parent, Qt::WindowFlags wFlags)
    : QChart(QChart::ChartTypeCartesian, parent, wFlags)
{
    grabGesture(Qt::PanGesture);
    grabGesture(Qt::PinchGesture);
}

bool Chart::sceneEvent(QEvent *event)
{
    if (event->type() == QEvent::Gesture)
        return gestureEvent(static_cast<QGestureEvent *>(event));

    return QChart::sceneEvent(event);
}

bool Chart::gestureEvent(QGestureEvent *event)
{
    if (QGesture *gesture = event->gesture(Qt::PanGesture))
    {
        auto pan = static_cast<QPanGesture *>(gesture);
        scroll(-(pan->delta().x()), pan->delta().y());
    }

    if (QGesture *gesture = event->gesture(Qt::PinchGesture))
    {
        auto pinch = static_cast<QPinchGesture *>(gesture);

        if (pinch->changeFlags() & QPinchGesture::ScaleFactorChanged)
            zoom(pinch->scaleFactor());
    }

    return true;
}
