//#ifndef MAINWINDOW_H
//#define MAINWINDOW_H

//#include <QMainWindow>

//QT_BEGIN_NAMESPACE
//namespace Ui { class MainWindow; }
//QT_END_NAMESPACE

//class MainWindow : public QMainWindow
//{
//    Q_OBJECT

//public:
//    MainWindow(QWidget *parent = nullptr);
//    ~MainWindow();

//private slots:
//    void onStartFreqButtonPressed();
//    void onEndFreqButtonPressed();
//    void onStepSizeButtonPressed();
//    void onEnterButtonPressed();

//private:
//    Ui::MainWindow *ui;
//};

//#endif // MAINWINDOW_H


#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <cstdint>

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

private slots:
    void onStartFreqButtonPressed();
    void onEndFreqButtonPressed();
    void onStepSizeButtonPressed();
    void onEnterButtonPressed();
    void onRunButtonPressed();

private:
    Ui::MainWindow *ui;

    uint32_t start_freq = 0;
    uint32_t stop_freq  = 0;
    uint32_t step_freq  = 0;

    bool isRunning = false;
    int freq_to_index(uint32_t freq_mhz);
    void startSweep();
};

#endif // MAINWINDOW_H
