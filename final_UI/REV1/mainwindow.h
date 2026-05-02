#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <cstdint>
#include <QPushButton>
#include <functional>



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
    void updatePeakDisplay(const QList<float>& peakValues, const QList<float>& peakAmplitudes);

private slots:
    void onStartFreqButtonPressed();
    void onEndFreqButtonPressed();
//    void onStepSizeButtonPressed();
    void onEnterButtonPressed();
    void onRunButtonPressed();
    void onResetButtonPressed();
    void onZoomInButtonPressed();
    void onZoomOutButtonPressed();
    void onSettingsButtonPressed();
    void onAutosetButtonPressed();
    void onCursorButtonPressed();

private:
    Ui::MainWindow *ui;
    bool isConfigured = false;
    float frequency_offset = 0.0f; // Add this line
    int step_size;

    uint32_t start_freq = 0;
    uint32_t stop_freq  = 0;
    uint32_t step_freq  = 0;

    bool pre_amp_enabled = false;

    bool isRunning = false;

    float freq_start_val = 0;
    float freq_start_val_static = -11.50f;

    int freq_to_index(uint32_t freq_mhz);
    void startSweep();
    void showNumpadAtButton(QPushButton* btn, const QString& title, std::function<void(double)> callback);
};

#endif // MAINWINDOW_H
