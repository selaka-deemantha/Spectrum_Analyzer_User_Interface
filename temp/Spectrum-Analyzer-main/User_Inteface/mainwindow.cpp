#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"

#include <QDebug>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QMessageBox>

#include <fcntl.h>
#include <unistd.h>
#include <errno.h>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QWidget *windowContainer = new QWidget(this);
    setCentralWidget(windowContainer);

    QHBoxLayout *topLevelLayout = new QHBoxLayout(windowContainer);
    QVBoxLayout *leftColumn = new QVBoxLayout();
    QHBoxLayout *labelBar = new QHBoxLayout();

    leftColumn->addWidget(ui->plotWidget, 12);
    labelBar->addWidget(ui->label_1);
    labelBar->addWidget(ui->span_label);
    labelBar->addSpacing(20);
    labelBar->addWidget(ui->label_2);
    labelBar->addWidget(ui->step_label);
    labelBar->addSpacing(20);
    labelBar->addWidget(ui->label_3);
    labelBar->addWidget(ui->rbw_label);
    labelBar->addSpacing(20);
    labelBar->addWidget(ui->label_4);
    labelBar->addWidget(ui->swt_label);

    leftColumn->addLayout(labelBar, 1);
    topLevelLayout->addLayout(leftColumn, 6);
    topLevelLayout->addWidget(ui->controlWidget, 1);

    connect(ui->StartFreqBtn, &QPushButton::clicked, this, &MainWindow::onStartFreqButtonPressed);
    connect(ui->EndFreqBtn, &QPushButton::clicked, this, &MainWindow::onEndFreqButtonPressed);
    connect(ui->StepSizeBtn, &QPushButton::clicked, this, &MainWindow::onStepSizeButtonPressed);
    connect(ui->EnterBtn, &QPushButton::clicked, this, &MainWindow::onEnterButtonPressed);
    connect(ui->RunBtn, &QPushButton::clicked, this, &MainWindow::onRunButtonPressed);
}

MainWindow::~MainWindow()
{
    delete ui;
}

int MainWindow::freq_to_index(uint32_t freq_mhz)
{
    if (freq_mhz < FREQ_START_MHZ || freq_mhz > FREQ_END_MHZ)
    {
        QMessageBox::warning(this,
                             "Invalid frequency range",
                             "Start frequency must be less than or equal to End frequency.");
        return -1;
    }
    if (FREQ_START_MHZ > FREQ_END_MHZ)
    {
        QMessageBox::warning(this,
                             "Invalid frequency range",
                             "Frequency must be between 0 and 3200 MHz.");
        return -1;
    }
    if (FREQ_STEP_MHZ == 0 || FREQ_STEP_MHZ % 5 != 0)
    {
        QString errorMsg = (FREQ_STEP_MHZ == 0)
            ? tr("The frequency step cannot be zero.")
            : tr("The frequency step (%1 MHz) must be a multiple of 5.").arg(FREQ_STEP_MHZ);

        QMessageBox::critical(this,
                             tr("Invalid Step Configuration"),
                             errorMsg);
        return -1;
    }

    return (freq_mhz - FREQ_START_MHZ) / FREQ_STEP_MHZ;
}

void MainWindow::updateSpanLabel()
{
    if (start_freq > 0 && stop_freq > 0)
    {
        ui->span_label->setText(
            QString("%1 MHz - %2 MHz")
                .arg(start_freq)
                .arg(stop_freq)
        );
        ui->rbw_label->setText(QString("%1 MHz").arg((stop_freq-start_freq) / 1e6, 0, 'f', 3));
        ui->swt_label->setText(QString("%1 MHz").arg((stop_freq-start_freq) / 1e6, 0, 'f', 3));
    }
}


void MainWindow::onStartFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Start Frequency (MHz)");

    if (dlg.exec() == QDialog::Accepted) {
        start_freq = static_cast<uint32_t>(dlg.value());
        updateSpanLabel();
    }
}

void MainWindow::onEndFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set End Frequency (MHz)");

    if (dlg.exec() == QDialog::Accepted) {
        stop_freq = static_cast<uint32_t>(dlg.value());
        updateSpanLabel();
    }
}

void MainWindow::onStepSizeButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Step Size (MHz)");

    if (dlg.exec() == QDialog::Accepted) {
        step_freq = static_cast<uint32_t>(dlg.value());
        ui->step_label->setText(QString("%1 MHz").arg(step_freq));
    }
}


void MainWindow::onEnterButtonPressed()
{
    if (step_freq == 0 || step_freq % FREQ_STEP_MHZ != 0) {
        qDebug() << "ERROR: Step must be multiple of 5 MHz";
        return;
    }

    int start_idx = freq_to_index(start_freq);
    int stop_idx  = freq_to_index(stop_freq);
    int step_idx  = step_freq / FREQ_STEP_MHZ;

    if (start_idx < 0 || stop_idx < 0 || start_idx >= stop_idx) {
        qDebug() << "ERROR: Invalid frequency range";
        return;
    }

    qDebug() << "START_IDX =" << start_idx
             << "STOP_IDX ="  << stop_idx
             << "STEP_IDX ="  << step_idx;

    int fd = open(DEVICE, O_RDWR);
    if (fd < 0) {
        qDebug() << "open failed:" << strerror(errno);
        return;
    }

    uint32_t data[4] = {
        static_cast<uint32_t>(start_idx),
        static_cast<uint32_t>(stop_idx),
        static_cast<uint32_t>(step_idx),
        static_cast<uint32_t>(1)
    };

    if (write(fd, data, sizeof(data)) != sizeof(data)) {
        qDebug() << "write failed:" << strerror(errno);
        ::close(fd);
        return;
    }

    qDebug() << "Sweep started!";
    isRunning = true;
    ui->RunBtn->setText("Stop");
//    ui->plotWidget->startAcquisition();
    ui->plotWidget->startAcquisition(start_freq, stop_freq, step_freq);

    ::close(fd);
}

void MainWindow::onRunButtonPressed()
{
    if (!isRunning)
    {
//        ui->plotWidget->startAcquisition();   // Dynamic
        ui->plotWidget->startAcquisition(start_freq, stop_freq, step_freq);
        ui->RunBtn->setText("Stop");
        isRunning = true;
    }
    else
    {
        ui->plotWidget->stopAcquisition();    // Stop updates
        ui->RunBtn->setText("Run");
        isRunning = false;
    }
}
