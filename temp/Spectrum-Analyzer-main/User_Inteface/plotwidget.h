//#ifndef PLOTWIDGET_H
//#define PLOTWIDGET_H

//#include <QWidget>
//#include <QTimer>
//#include <QVector>
//#include <QPixmap>

//class PlotWidget : public QWidget
//{
//    Q_OBJECT
//public:
//    explicit PlotWidget(QWidget *parent = nullptr);

//protected:
//    void paintEvent(QPaintEvent *event) override;
//    void resizeEvent(QResizeEvent *event) override;  // regenerate grid when resized

//private slots:
//    void updateData();

//private:
//    QVector<int> data;    // stores y-values
//    QTimer timer;
//    QPixmap background;   // cached grid
//    void generateGrid();  // draw grid once
//};

//#endif // PLOTWIDGET_H



#ifndef PLOTWIDGET_H
#define PLOTWIDGET_H

#include <QWidget>
#include <QTimer>
#include <QVector>
#include <QGestureEvent>
#include <QEvent>
#include <QPixmap>
#include <stdint.h>
#include <QRubberBand>
#include <QMouseEvent>

class PlotWidget : public QWidget
{
    Q_OBJECT
public:
    explicit PlotWidget(QWidget *parent = nullptr);
//    void startAcquisition();
    void startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step);
    void stopAcquisition();

protected:
    void paintEvent(QPaintEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;  // regenerate grid when resized

    void mousePressEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseDoubleClickEvent(QMouseEvent *event) override;

private slots:
    void updateData();

private:
//    QVector<int> data;    // stores y-values
    float minFreq = 0.0f;
    float maxFreq = 3200.0f;
    float stepSize = 5.0f;
    int currentStepIndex = 0;
    int segments = 0;

    // -------- Zoom variables --------
    int viewStart = 0;
    int viewEnd = 0;

    float yMin = 0.0f;
    float yMax = 1.0f;

    QPoint zoomOrigin;
    QRubberBand *rubberBand;

    QVector<float> data;
    QTimer timer;
    QPixmap background;   // cached grid
    void generateGrid();  // draw grid once

    void readDmaSamples(); // read 1024 samples from DMA device
};

#endif // PLOTWIDGET_H
