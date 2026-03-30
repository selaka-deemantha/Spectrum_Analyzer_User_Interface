#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"
#include "plotwidget.h"
#include "settingsdialog.h"

#include <QDebug>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QMessageBox>
#include <QCheckBox>
#include <QSpinBox>
#include <QSizePolicy>

#include <fcntl.h>
#include <unistd.h>
#include <errno.h>



double start_freq;
double end_freq;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Set size policies for responsive layout
    ui->plotWidget->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    ui->controlWidget->setSizePolicy(QSizePolicy::Preferred, QSizePolicy::Expanding);
    ui->controlWidget->setFixedWidth(171);

    // Create bottom bar for labels
    QWidget *bottomBar = new QWidget();
    QHBoxLayout *bottomLayout = new QHBoxLayout(bottomBar);

    // Move labels to bottom bar
    ui->label_1->setParent(bottomBar);
    ui->center_freq_label->setParent(bottomBar);
    ui->label_2->setParent(bottomBar);
    ui->span_label->setParent(bottomBar);
    ui->label_3->setParent(bottomBar);
    ui->rbw_label->setParent(bottomBar);
    ui->label_4->setParent(bottomBar);
    ui->swt_label->setParent(bottomBar);
    ui->label_5->setParent(bottomBar);

    // Add labels to bottom layout
    bottomLayout->addWidget(ui->label_1);
    bottomLayout->addWidget(ui->center_freq_label);
    bottomLayout->addWidget(ui->label_2);
    bottomLayout->addWidget(ui->span_label);
    bottomLayout->addWidget(ui->label_3);
    bottomLayout->addWidget(ui->rbw_label);
    bottomLayout->addWidget(ui->label_4);
    bottomLayout->addWidget(ui->swt_label);
    bottomLayout->addWidget(ui->label_5);

    // Set main layout
    QVBoxLayout *mainLayout = new QVBoxLayout(ui->centralwidget);
    QHBoxLayout *topLayout = new QHBoxLayout();
    topLayout->addWidget(ui->plotWidget, 1);
    topLayout->addWidget(ui->controlWidget, 0);
    mainLayout->addLayout(topLayout, 1);
    mainLayout->addWidget(bottomBar, 0);
    connect(ui->CenterFreqBtn, &QPushButton::clicked,this, &MainWindow::onCenterFreqButtonPressed);
    connect(ui->Sizebtn, &QPushButton::clicked,this, &MainWindow::onSizeButtonPressed);
    connect(ui->CalibBtn, &QPushButton::clicked,this, &MainWindow::onCalibButtonPressed);

    // Add zoom buttons
    QPushButton *zoomInBtn = new QPushButton("Zoom In", ui->controlWidget);
    zoomInBtn->setGeometry(0, 130, 171, 31);
    connect(zoomInBtn, &QPushButton::clicked, this, &MainWindow::onZoomInButtonPressed);

    QPushButton *zoomOutBtn = new QPushButton("Zoom Out", ui->controlWidget);
    zoomOutBtn->setGeometry(0, 160, 171, 31);
    connect(zoomOutBtn, &QPushButton::clicked, this, &MainWindow::onZoomOutButtonPressed);

    // Default data source and downsampling
    ui->plotWidget->setDataSource(RandomData);
    ui->plotWidget->setDownSamplingMethod(MaxPooling);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::onSpanButtonPressed(){
    NumPadDialog dlg(this);
    dlg.setTitle("Set Start Frequency");
    dlg.setWindowState(Qt::WindowFullScreen);

    if (dlg.exec() == QDialog::Accepted) {
        m_start_freq = dlg.value();
        qDebug() << "Start Frequency set to:" << m_start_freq;
    }

    ui->span_label->setText(QString("%1 MHz").arg(m_start_freq, 0, 'f', 3));
    ui->rbw_label->setText(QString("%1 MHz").arg(m_start_freq / 1e6, 0, 'f', 3));
    ui->swt_label->setText(QString("%1 MHz").arg(m_start_freq / 1e6, 0, 'f', 3));
}

void MainWindow::onCenterFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set End Frequency");
    dlg.setWindowState(Qt::WindowFullScreen);

    if (dlg.exec() == QDialog::Accepted) {
        m_end_freq = dlg.value();
        qDebug() << "End Frequency set to:" << m_end_freq;
    }

    ui->center_freq_label->setText(QString("%1 MHz").arg(m_end_freq, 0, 'f', 3));
}

void MainWindow::onSizeButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Step Size");
    dlg.setWindowState(Qt::WindowFullScreen);

    if (dlg.exec() == QDialog::Accepted) {
        m_size = dlg.value();
        qDebug() << "Step Size set to:" << m_size;

        if (OS_TYPE == "LINUX") {
            qDebug() << "OS : LINUX";

            // open the VCO driver
            int fd = open(VCO_DEVICE, O_RDWR);
            if (fd < 0) {
                qDebug() << "open failed:" << strerror(errno);
                return;
            }

            qDebug() << "Opened the driver";

            uint32_t data[4] = {
                static_cast<uint32_t>(m_start_freq),
                static_cast<uint32_t>(m_end_freq),
                static_cast<uint32_t>(m_size),
                static_cast<uint32_t>(1)
            };

            if (write(fd, data, sizeof(data)) != sizeof(data)) {
                qDebug() << "write failed:" << strerror(errno);
                ::close(fd);
                return;
            }

            qDebug() << "Wrote the frequency data to VCO";

            ::close(fd);
        }
        else {
            qDebug() << "OS : WINDOWS";

        }

    }

    ui->size_label->setText(QString("%1 MHz").arg(m_size, 0, 'f', 1));

    // Start sweep
    ui->plotWidget->setSweep(
                m_start_freq,
                m_end_freq,
                m_size
                );
}

void MainWindow::on_SpanBtn_clicked()
{
    onSpanButtonPressed();
}

void MainWindow::onZoomInButtonPressed()
{
    ui->plotWidget->zoomIn();
}

void MainWindow::onZoomOutButtonPressed()
{
    ui->plotWidget->zoomOut();
}

void MainWindow::onCalibButtonPressed()
{
    SettingsDialog dlg(this,
                       ui->plotWidget->getDownSamplingMethod(),
                       ui->plotWidget->getDataSource(),
                       ui->plotWidget->getDisplayMode(),
                       ui->plotWidget->getAveragingEnabled(),
                       ui->plotWidget->getAveragingNumber());

    if (dlg.exec() == QDialog::Accepted)
    {
        int sampling_method  = dlg.selectedSamplingMethod();
        int debugging_method = dlg.selectDebuggingMethod();
        int display_mode     = dlg.selectDisplayMode();
        bool averagingEnabled  = dlg.isAveragingEnabled();
        int averagingNumber    = dlg.averagingNumber();

        // ---- Downsampling selection ----
        if (sampling_method == 0){
            ui->plotWidget->setDownSamplingMethod(MaxPooling);
            qDebug() << "Downsampling Method: MaxPooling selected";
        }
        else if (sampling_method == 1){
            ui->plotWidget->setDownSamplingMethod(AveragePooling);
            qDebug() << "Downsampling Method: AveragePooling selected";
        }
        else{
            qDebug() << "Unknown Downsampling Method selected!";
        }

        // ---- Data source selection ----
        if (debugging_method == 0){
            ui->plotWidget->setDataSource(DmaData);
            qDebug() << "Data Source: DMA FFT selected";
        }
        else if (debugging_method == 1){
            ui->plotWidget->setDataSource(RandomData);
            qDebug() << "Data Source: Random Data selected";
        }
        else if (debugging_method == 2){
            ui->plotWidget->setDataSource(FileData);
            qDebug() << "Data Source: File Data selected";
        }
        else{
            qDebug() << "Unknown Data Source selected!";
        }

        // ---- Display Mode selection ----
        if (display_mode == 0){
            ui->plotWidget->selectOutputDisplayMode(Linear);
            qDebug() << "DisplayMode Linear selected";
        }
        else if (display_mode == 1){
            ui->plotWidget->selectOutputDisplayMode(dB);
            qDebug() << "DisplayMode dB selected";
        }
        else{
            qDebug() << "Unknown Display Mode selected!";
        }

        // ---- Averaging settings ----
        ui->plotWidget->setAveragingEnabled(averagingEnabled);
        ui->plotWidget->setAveragingNumber(averagingNumber);
        qDebug() << "Averaging Enabled:" << averagingEnabled << "Number of Sweeps:" << averagingNumber;
    }
    else
    {
        qDebug() << "Settings dialog cancelled by user.";
    }
}
