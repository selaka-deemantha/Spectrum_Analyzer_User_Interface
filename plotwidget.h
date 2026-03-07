#ifndef PLOTWIDGET_H
#define PLOTWIDGET_H

#include <QWidget>
#include <QTimer>
#include <QVector>
#include <QPixmap>
#include <QChartView>
#include <QLineSeries>
#include <QValueAxis>
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <QRandomGenerator>
#include <cmath>
#include <cstdint>
#include "chart.h"
#include "chartview.h"

// ---------------- Enums ----------------
enum DataSource {
    RandomData,
    FileData,
    DmaData
};

enum DownSamplingMethod {
    MaxPooling,
    AveragePooling
};

enum DisplayMethod {
    dB,
    Linear
};

#define FFT_POINTS 508

class PlotWidget : public QWidget
{
    Q_OBJECT
public:
    explicit PlotWidget(QWidget *parent = nullptr);

    // ---------------- Setters ----------------
    void setDataSource(DataSource source);
    void setDownSamplingMethod(DownSamplingMethod source);
    void selectOutputDisplayMode(DisplayMethod source);

    void setSweep(double startFreq, double endFreq, double stepSize);

    // ---------------- Getters ----------------
    DataSource getDataSource() const { return dataSource; }
    DownSamplingMethod getDownSamplingMethod() const { return samplingMethod; }
    DisplayMethod getDisplayMode() const { return displayMode; }

    void zoomIn();
    void zoomOut();

    static bool DEBUG_MSG_ON;


    // averaging getters/setters

    // Setters
    void setAveragingEnabled(bool enable);
    void setAveragingNumber(int number);

    // Getters
    bool getAveragingEnabled() const;
    int getAveragingNumber() const;
    int getAverageCount() const;


protected:
    void resizeEvent(QResizeEvent *event) override;

private slots:
    void updateData();

private:
    void generateFFTFromFile(QVector<float> &frame);
    void generateRandomFFT(QVector<float> &frame);
    void generateFFTFromDMA(QVector<float> &frame);
    void downsampleSweep();

    QVector<float> data;
    QVector<float> sweepBuffer;
    QTimer timer;

    Chart *chart = nullptr;
    ChartView *chartView = nullptr;
    QLineSeries *series = nullptr;
    QValueAxis *axisX = nullptr;
    QValueAxis *axisY = nullptr;

    QRectF initialPlotArea;

    DataSource dataSource = RandomData;
    DownSamplingMethod samplingMethod = MaxPooling;
    DisplayMethod displayMode = Linear;

    double m_startFreq = 0;
    double m_endFreq = 100;
    double m_stepSize = 10;
    int totalSteps = 0;
    int currentStep = 0;

    // averaging mechanism
    bool averagingEnabled = false;
    QVector<float> averagedData;
    int averaging_number = 4;
    int avg_count = 0;
};

#endif // PLOTWIDGET_H
