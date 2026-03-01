#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

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

private:
    Ui::MainWindow *ui;
    double m_start_freq = 0.0;
    double m_end_freq = 0.0;
    double m_size = 0;
};

#endif // MAINWINDOW_H
