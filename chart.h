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
    explicit Chart(QGraphicsItem *parent = nullptr,
                   Qt::WindowFlags wFlags = Qt::WindowFlags());

protected:
    bool sceneEvent(QEvent *event) override;

private:
    bool gestureEvent(QGestureEvent *event);
};

#endif
