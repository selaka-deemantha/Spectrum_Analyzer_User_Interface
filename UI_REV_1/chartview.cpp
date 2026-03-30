#include "chartview.h"
#include <QMouseEvent>
#include <QWheelEvent>

ChartView::ChartView(QChart *chart, QWidget *parent)
    : QChartView(chart, parent)
{
    rubberBand = new QRubberBand(QRubberBand::Rectangle, this);
    setRubberBand(QChartView::RectangleRubberBand);
}

void ChartView::mousePressEvent(QMouseEvent *event)
{
    origin = event->pos();
    rubberBand->setGeometry(QRect(origin, QSize()));
    rubberBand->show();
    QChartView::mousePressEvent(event);
}

void ChartView::mouseMoveEvent(QMouseEvent *event)
{
    rubberBand->setGeometry(QRect(origin, event->pos()).normalized());
    QChartView::mouseMoveEvent(event);
}

void ChartView::mouseReleaseEvent(QMouseEvent *event)
{
    rubberBand->hide();

    QPoint endPos = event->pos();
    QRect rect = QRect(origin, endPos).normalized();

    if (rect.width() < 10 || rect.height() < 10) {
        // Small rectangle, do nothing
        QChartView::mouseReleaseEvent(event);
        return;
    }

    if (origin.x() < endPos.x()) {
        // Swept left to right, zoom in
        chart()->zoomIn(rect);
    } else {
        // Swept right to left, zoom reset (zoom out to original)
        chart()->zoomReset();
    }

    QChartView::mouseReleaseEvent(event);
}

void ChartView::wheelEvent(QWheelEvent *event)
{
    if (event->angleDelta().y() > 0) {
        chart()->zoomIn();
    } else {
        chart()->zoomOut();
        if (chart()->plotArea().width() > initialPlotArea.width() || chart()->plotArea().height() > initialPlotArea.height()) {
            chart()->zoomReset();
        }
    }
    event->accept();
}
