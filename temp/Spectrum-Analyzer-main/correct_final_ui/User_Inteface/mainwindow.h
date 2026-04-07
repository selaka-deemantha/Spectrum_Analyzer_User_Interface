#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <cstdint>
#include <QPushButton>
#include <functional>

#define DEVICE "/dev/vco_axi"
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
    void updateSpanLabel();
    void updatePeakDisplay(const QList<float>& peakValues);

private slots:
    void onStartFreqButtonPressed();
    void onEndFreqButtonPressed();
    void onStepSizeButtonPressed();
    void onEnterButtonPressed();
    void onRunButtonPressed();
    void onResetButtonPressed();
    void onZoomInButtonPressed();
    void onZoomOutButtonPressed();
    void onSettingsButtonPressed();
    void onAutosetButtonPressed();

private:
    Ui::MainWindow *ui;
    bool isConfigured = false;

    uint32_t start_freq = 0;
    uint32_t stop_freq  = 0;
    uint32_t step_freq  = 0;

    bool isRunning = false;
    int freq_to_index(uint32_t freq_mhz);
    void startSweep();
    void showNumpadAtButton(QPushButton* btn, const QString& title, std::function<void(double)> callback);
};

#endif // MAINWINDOW_H
