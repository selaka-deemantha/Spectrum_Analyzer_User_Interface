#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <cstdint>
#include "appconfig.h"

#define FREQ_START_MHZ 0
#define FREQ_END_MHZ   3200
#define FREQ_STEP_MHZ  5



QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:

    void onSpanButtonPressed();
    void onCenterFreqButtonPressed();
    void onSizeButtonPressed();
    void onCalibButtonPressed();

    void on_SpanBtn_clicked();

    void onZoomInButtonPressed();
    void onZoomOutButtonPressed();

private:
    Ui::MainWindow *ui;

    // vco driver variables
    uint32_t start_freq = 0;
    uint32_t stop_freq = 0;
    uint32_t step_freq = 0;

    double m_start_freq = 0.0;
    double m_end_freq = 0.0;
    double m_size = 0;
};

#endif // MAINWINDOW_H
