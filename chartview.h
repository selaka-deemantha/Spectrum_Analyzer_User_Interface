#ifndef CHARTVIEW_H
#define CHARTVIEW_H

#include <QtCharts/QChartView>
#include <QRubberBand>

QT_CHARTS_USE_NAMESPACE

class ChartView : public QChartView
{
    Q_OBJECT

public:
    explicit ChartView(QChart *chart, QWidget *parent = nullptr);

    QRectF initialPlotArea;

protected:
    void mousePressEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void wheelEvent(QWheelEvent *event) override;

private:
    QRubberBand *rubberBand;
    QPoint origin;
};

#endif
