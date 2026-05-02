#ifndef CHART_H
#define CHART_H

#include <QtCharts/QChart>
#include <QGestureEvent>
#include <QPanGesture>
#include <QPinchGesture>

QT_CHARTS_USE_NAMESPACE

class Chart : public QChart
{
    Q_OBJECT

public:
    explicit Chart(QGraphicsItem *parent = nullptr, Qt::WindowFlags wFlags = {});

protected:
    bool sceneEvent(QEvent *event);

private:
    bool gestureEvent(QGestureEvent *event);
};

#endif
