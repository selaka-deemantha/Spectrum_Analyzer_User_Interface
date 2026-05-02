#include "chartview.h"
#include <QMouseEvent>
#include <QKeyEvent>

ChartView::ChartView(QChart *chart, QWidget *parent)
    : QChartView(chart, parent),
      m_rubberBand(new QRubberBand(QRubberBand::Rectangle, this))
{
    setRubberBand(QChartView::NoRubberBand);
    setMouseTracking(true);
}

bool ChartView::viewportEvent(QEvent *event)
{
    return QChartView::viewportEvent(event);
}

void ChartView::mousePressEvent(QMouseEvent *event)
{
    m_origin = event->pos();
    m_lastRect = QRect(m_origin, QSize());
    m_rubberBand->setGeometry(m_lastRect);
    m_rubberBand->setGeometry(QRect(m_origin, QSize()));
//    m_rubberBand->show();
}

void ChartView::mouseMoveEvent(QMouseEvent *event)
{
    m_rubberBand->setGeometry(QRect(m_origin, event->pos()).normalized());
}

//void ChartView::mouseReleaseEvent(QMouseEvent *event)
//{
//    m_rubberBand->hide();
//    chart()->zoomIn(QRectF(m_rubberBand->geometry()));
//    QChartView::mouseReleaseEvent(event);
//}

void ChartView::mouseReleaseEvent(QMouseEvent *event)
{
    QRect finalRect = QRect(m_origin, event->pos()).normalized();
    m_rubberBand->hide();

    int initialArea = m_lastRect.width() * m_lastRect.height();
    int finalArea = finalRect.width() * finalRect.height();

    if (finalArea > initialArea) {
        // Dragged outward → Zoom In
        chart()->zoomIn(QRectF(finalRect));
    } else {
        // Dragged inward → Zoom Out
        chart()->zoomOut();
    }

    QChartView::mouseReleaseEvent(event);
}

void ChartView::keyPressEvent(QKeyEvent *event)
{
    switch (event->key()) {
    case Qt::Key_Plus:
        chart()->zoomIn();
        break;
    case Qt::Key_Minus:
        chart()->zoomOut();
        break;
    default:
        QChartView::keyPressEvent(event);
        break;
    }
}
