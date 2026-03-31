#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"
#include "settingsdialog.h"

#include <QDebug>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QMessageBox>

#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

#include "appConfig.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QHBoxLayout *topLevelLayout = new QHBoxLayout(ui->centralwidget);
    QVBoxLayout *leftColumn = new QVBoxLayout();
    QHBoxLayout *labelBar = new QHBoxLayout();
    QVBoxLayout *rightColumn = new QVBoxLayout();

    rightColumn->addWidget(ui->RunBtn);
    rightColumn->addWidget(ui->SettingsBtn);
    rightColumn->addWidget(ui->AutosetBtn);
    rightColumn->addWidget(ui->controlWidget);
    rightColumn->addWidget(ui->controlWidget_2);
    rightColumn->addWidget(ui->controlWidget_3);

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
    topLevelLayout->addLayout(rightColumn, 1);

    ui->rbw_label->setText(QString("0 MHz"));
    ui->swt_label->setText(QString("0 MHz"));
    ui->span_label->setText(QString("0 MHz"));
    ui->step_label->setText(QString("0 MHz"));

    connect(ui->StartFreqBtn, &QPushButton::clicked, this, &MainWindow::onStartFreqButtonPressed);
    connect(ui->EndFreqBtn, &QPushButton::clicked, this, &MainWindow::onEndFreqButtonPressed);
    connect(ui->StepSizeBtn, &QPushButton::clicked, this, &MainWindow::onStepSizeButtonPressed);
    connect(ui->EnterBtn, &QPushButton::clicked, this, &MainWindow::onEnterButtonPressed);
    connect(ui->RunBtn, &QPushButton::clicked, this, &MainWindow::onRunButtonPressed);
    connect(ui->ResetBtn, &QPushButton::clicked, this, &MainWindow::onResetButtonPressed);
    connect(ui->plotWidget, &PlotWidget::peaksUpdated, this, &MainWindow::updatePeakDisplay);
    connect(ui->ZoomInBtn, &QPushButton::clicked, this, &MainWindow::onZoomInButtonPressed);
    connect(ui->ZoomInBtn, &QPushButton::clicked, this, &MainWindow::onZoomInButtonPressed);
    connect(ui->SettingsBtn, &QPushButton::clicked, this, &MainWindow::onSettingsButtonPressed);
    connect(ui->AutosetBtn, &QPushButton::clicked, this, &MainWindow::onAutosetButtonPressed);
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
                             "Frequency must be between 0 and 3200 MHz.");
        return -1;
    }

    return (freq_mhz - FREQ_START_MHZ) / FREQ_STEP_MHZ;
}

void MainWindow::updateSpanLabel()
{
    if (start_freq >= 0 && stop_freq > 0)
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
    int step_idx  = step_freq / FREQ_STEP_MHZ;
    int start_idx = freq_to_index(start_freq);
    int stop_idx  = freq_to_index(stop_freq)-step_idx;

    if (start_freq > stop_freq)
    {
        QMessageBox::warning(this,
                             "Invalid frequency range",
                             "Start frequency must be less than or equal to End frequency.");
        return;
    }

    if (step_freq == 0)
    {
        QMessageBox::warning(nullptr, "Invalid frequency step", "The frequency step cannot be zero.");
        return;
    }

    if (step_freq % 5 != 0)
    {
        QMessageBox::warning(nullptr, "Invalid frequency step",
                             QString("The frequency step (%1 MHz) must be a multiple of 5.").arg(step_freq));
        return;
    }
#if DEBUG_MSG
    qDebug() << "START_IDX =" << start_idx << "STOP_IDX ="  << stop_idx << "STEP_IDX ="  << step_idx;
#endif

#if TEST_MODE


#else

    int fd = open(DEVICE, O_RDWR);
    if (fd < 0) {
        qDebug() << "open failed:" << strerror(errno);
        isConfigured = false;
        return;
    }

#endif

    uint32_t data[4] = {
        static_cast<uint32_t>(start_idx),
        static_cast<uint32_t>(stop_idx),
        static_cast<uint32_t>(step_idx),
        static_cast<uint32_t>(1)
    };

#if TEST_MODE


#else

    if (write(fd, data, sizeof(data)) != sizeof(data)) {
        qDebug() << "write failed:" << strerror(errno);
        ::close(fd);
        return;
    } else {
        isConfigured = true;
        isRunning = true;
    }

#endif

#if DEBUG_MSG
    qDebug() << "Sweep started!";
#endif

    ui->RunBtn->setText("Stop");
//    ui->plotWidget->startAcquisition();
    ui->plotWidget->startAcquisition(start_freq, stop_freq, step_freq);



#if TEST_MODE

#else

    ::close(fd);

#endif


}

void MainWindow::onRunButtonPressed()
{
    if (!isConfigured) {
        QMessageBox::warning(this, "Action Required",
                             "Please set frequencies and press 'Calibrate'.");
        return;
    }
    if (!isRunning)
    {
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

void MainWindow::onResetButtonPressed()
{
    ui->plotWidget->resetView();
}

void MainWindow::updatePeakDisplay(const QList<float>& peakValues)
{
    if (peakValues.size() >= 1)
        ui->peak1_label->setText(
            QString("1: %1 MHz").arg(start_freq + (0.078125 * peakValues[0]) * step_freq / FREQ_STEP_MHZ, 0, 'f', 2)
        );

    if (peakValues.size() >= 2)
        ui->peak2_label->setText(
            QString("2: %1 MHz").arg(start_freq + (0.078125 * peakValues[1]) * step_freq / FREQ_STEP_MHZ, 0, 'f', 2)
        );

    if (peakValues.size() >= 3)
        ui->peak3_label->setText(
            QString("3: %1 MHz").arg(start_freq + (0.078125 * peakValues[2]) * step_freq / FREQ_STEP_MHZ, 0, 'f', 2)
        );
}

void MainWindow::onZoomInButtonPressed()
{
    ui->plotWidget->zoomIn();
}

void MainWindow::onZoomOutButtonPressed()
{
    ui->plotWidget->zoomOut();
}

void MainWindow::onAutosetButtonPressed()
{
//    ui->plotWidget->zoomOut();
    ui->plotWidget->setAutosetEnabled(true);
}

void MainWindow::onSettingsButtonPressed()
{
    SettingsDialog dlg(this,
                       globalPlotSettings.samplingMethod,
                       globalPlotSettings.displayMode,
                       ui->plotWidget->getAveragingEnabled(),
                       ui->plotWidget->getAveragingNumber(),
                       ui->plotWidget->getNoiseThreshold());

    if (dlg.exec() == QDialog::Accepted)
    {
        int sampling_method  = dlg.selectedSamplingMethod();
        int display_mode     = dlg.selectDisplayMode();
        bool averagingEnabled  = dlg.isAveragingEnabled();
        int averagingNumber    = dlg.averagingNumber();
        float noise_thresh     = dlg.noiseThreshold();

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
        ui->plotWidget->setNoiseThreshold(noise_thresh);
        qDebug() << "Averaging Enabled:" << averagingEnabled << "Number of Sweeps:" << averagingNumber;
    }
    else
    {
        qDebug() << "Settings dialog cancelled by user.";
    }
}
