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
#include <QThread>
#include "dmaworker.h"

// ---------------- Enums ----------------
enum DownSamplingMethod {
    MaxPooling,
    AveragePooling
};

enum DisplayMethod {
    dB,
    Linear
};

struct PlotSettings {
    DownSamplingMethod samplingMethod = MaxPooling;
    DisplayMethod displayMode = Linear;
};

inline PlotSettings globalPlotSettings;

class PlotWidget : public QWidget
{
    Q_OBJECT
public:
    explicit PlotWidget(QWidget *parent = nullptr);
    ~PlotWidget();
//    void startAcquisition();
    void startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step);
    void stopAcquisition();
    void resetView();

    // ---------------- Setters ----------------
    void setDownSamplingMethod(DownSamplingMethod source);
    void selectOutputDisplayMode(DisplayMethod source);

    void setSweep(double startFreq, double endFreq, double stepSize);

    // ---------------- Getters ----------------
//    DataSource getDataSource() const;
//    DownSamplingMethod getDownSamplingMethod() const;
//    DisplayMethod getDisplayMode() const;


    void zoomIn();
    void zoomOut();
    void yscaleUpdate();

    // averaging getters/setters

    // Setters
    void setAveragingEnabled(bool enable);
    void setAveragingNumber(int number);
    void setAutosetEnabled(bool enable);

    // Getters
    bool getAveragingEnabled() const;
    int getAveragingNumber() const;
    int getAverageCount() const;

public slots:
    void onNewFFTData(const std::vector<float>& fft);

protected:
    void paintEvent(QPaintEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;  // regenerate grid when resized

    void mousePressEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseDoubleClickEvent(QMouseEvent *event) override;

private slots:
//    void handleNewFFTData(const std::vector<float>& fftData);

private:
    float maxVal;
    float minVal;
    bool autosetEnabled = false;

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
    QVector<float> *plotData = &data;
    QTimer timer;
    QPixmap background;   // cached grid
    void generateGrid();  // draw grid once

    void generateRandomFFT();
    void generateFFTFromFile();
    void onAveragingData();
    float downsampleSweep(int start, int step);

    DownSamplingMethod samplingMethod = MaxPooling;
    DisplayMethod displayMode = Linear;

    bool averagingEnabled = false;
    QVector<float> averagedData;
    int averaging_number = 4;
    int avg_count = 0;

    QThread* dmaThread = new QThread();
    DMAWorker* dmaWorker = new DMAWorker();

signals:
    // This is the missing declaration causing your error
    void peaksUpdated(const QList<float>& peakValues);
};

#endif // PLOTWIDGET_H
