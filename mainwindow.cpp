#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"
#include "plotwidget.h"
#include "settingsdialog.h"


#include <QDebug>

double start_freq;
double end_freq;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    //connect buttons to numpaddialog
    connect(ui->SpanBtn,&QPushButton::clicked,this, &MainWindow::onSpanButtonPressed);
    connect(ui->CenterFreqBtn, &QPushButton::clicked,this, &MainWindow::onCenterFreqButtonPressed);
    connect(ui->Sizebtn, &QPushButton::clicked,this, &MainWindow::onSizeButtonPressed);
    connect(ui->CalibBtn, &QPushButton::clicked,this, &MainWindow::onCalibButtonPressed);

    //load the fft file for debuggin purposes
    ui->plotWidget->loadFFTFromFile("/home/selaka/Spectrum_Analyzer_UI/UI_1/fft_output_2.txt");
    //ui->plotWidget->setDataSource(PlotWidget::FileData);
    ui->plotWidget->setDataSource(PlotWidget::RandomData);

    ui->plotWidget->setDownSamplingMethod(PlotWidget::MaxPooling);
    //ui->plotWidget->setDownSamplingMethod(PlotWidget::AveragePooling);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::onSpanButtonPressed(){
    NumPadDialog dlg(this);
    dlg.setTitle("Set Start Frequency");
    dlg.showFullScreen();

    if (dlg.exec() == QDialog::Accepted) {
        m_start_freq = dlg.value();
        // store span, update spectrum scaling later
        qDebug() << "start Frequency set to:" << m_start_freq;
    }

    ui->span_label->setText(QString("%1 MHz").arg(m_start_freq, 0, 'f', 3));
    ui->rbw_label->setText(QString("%1 MHz").arg(m_start_freq / 1e6, 0, 'f', 3));
    ui->swt_label->setText(QString("%1 MHz").arg(m_start_freq / 1e6, 0, 'f', 3));

}

void MainWindow::onCenterFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set End Frequency");

    if (dlg.exec() == QDialog::Accepted) {
        m_end_freq = dlg.value();
        // store center frequency
        qDebug() << "end Frequency set to:" << m_end_freq;
    }
    ui->center_freq_label->setText(QString("%1 MHz").arg(m_end_freq, 0, 'f', 3));
}

void MainWindow::onSizeButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Step Size");

    if (dlg.exec() == QDialog::Accepted) {
        m_size = dlg.value();
        // store center frequency
        qDebug() << "Step Size set to:" << m_size;
    }
    // .arg(value, minimum field width, floating point notation, 3 digit after decimal point)
    ui->size_label->setText(QString("%1 MHz").arg(m_size, 0, 'f', 1));

    // start sweep
    ui->plotWidget->setSweep(
                m_start_freq,
                m_end_freq,
                m_size
                );
}

void MainWindow::onCalibButtonPressed()
{
    SettingsDialog dlg(this);

    if (dlg.exec() == QDialog::Accepted)
    {
        int sampling_method  = dlg.selectedSamplingMethod();
        int debugging_method = dlg.selectDebuggingMethod();

        // ---- Downsampling selection ----
        if (sampling_method == 0)
        {
            ui->plotWidget->setDownSamplingMethod(PlotWidget::MaxPooling);
            qDebug() << "Downsampling Method: MaxPooling selected";
        }
        else if (sampling_method == 1)
        {
            ui->plotWidget->setDownSamplingMethod(PlotWidget::AveragePooling);
            qDebug() << "Downsampling Method: AveragePooling selected";
        }
        else
        {
            qDebug() << "Unknown Downsampling Method selected!";
        }

        // ---- Data source selection ----
        if (debugging_method == 0)
        {
            ui->plotWidget->setDataSource(PlotWidget::DmaData);
            qDebug() << "Data Source: DMA FFT selected";
        }
        else if (debugging_method == 1)
        {
            ui->plotWidget->setDataSource(PlotWidget::RandomData);
            qDebug() << "Data Source: Random Data selected";
        }
        else if (debugging_method == 2)
        {
            ui->plotWidget->setDataSource(PlotWidget::FileData);
            qDebug() << "Data Source: File Data selected";
        }
        else
        {
            qDebug() << "Unknown Data Source selected!";
        }

        qDebug() << "Settings applied successfully.";
    }
    else
    {
        qDebug() << "Settings dialog cancelled by user.";
    }
}
