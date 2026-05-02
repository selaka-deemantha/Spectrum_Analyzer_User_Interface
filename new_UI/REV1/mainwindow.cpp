#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"
#include "settingsdialog.h"

#include <QDebug>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QMessageBox>
#include <QProcess>

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
    rightColumn->addWidget(ui->label);
    rightColumn->addWidget(ui->tableWidget);

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
//    connect(ui->StepSizeBtn, &QPushButton::clicked, this, &MainWindow::onStepSizeButtonPressed);
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

    return (freq_mhz - FREQ_START_MHZ);
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

//void MainWindow::onStepSizeButtonPressed()
//{
//    NumPadDialog dlg(this);
//    dlg.setTitle("Set Step Size (MHz)");

//    if (dlg.exec() == QDialog::Accepted) {
//        step_freq = static_cast<uint32_t>(dlg.value());
//        ui->step_label->setText(QString("%1 MHz").arg(step_freq));
//    }
//}


void MainWindow::onEnterButtonPressed()
{
    step_freq = step_size;

    int step_idx  = step_freq;
    int start_idx = freq_to_index(start_freq);
    int stop_idx  = freq_to_index(stop_freq)-step_idx;

    if (start_freq > stop_freq)
    {
        QMessageBox::warning(this,
                             "Invalid frequency range",
                             "Start frequency must be less than or equal to End frequency.");
        return;
    }





    int fd = open(DEVICE, O_RDWR);
    if (fd < 0) {
        qDebug() << "open failed:" << strerror(errno);
        isConfigured = false;
        return;
    }


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

void MainWindow::updatePeakDisplay(const QList<float>& peakValues, const QList<float>& peakAmplitudes)
{
    // Make sure your table has at least 3 rows and 2 columns
    if (ui->tableWidget->rowCount() < 3) ui->tableWidget->setRowCount(3);
    if (ui->tableWidget->columnCount() < 2) ui->tableWidget->setColumnCount(2);

    // Block 1
    if (peakValues.size() >= 1) {
        float calcFreq = 0.078125 * peakValues[0] + start_freq + frequency_offset;
        ui->tableWidget->setItem(0, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
        ui->tableWidget->setItem(0, 1, new QTableWidgetItem(QString::number(peakAmplitudes[0], 'f', 2)));
    }

    // Block 2
    if (peakValues.size() >= 2) {
        float calcFreq = 0.078125 * peakValues[1] + start_freq + frequency_offset;
        ui->tableWidget->setItem(1, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
        ui->tableWidget->setItem(1, 1, new QTableWidgetItem(QString::number(peakAmplitudes[1], 'f', 2))); // Changed from [0] to [1]
    }

    // Block 3
    if (peakValues.size() >= 3) {
        float calcFreq = 0.078125 * peakValues[2] + start_freq + frequency_offset;
        ui->tableWidget->setItem(2, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
        ui->tableWidget->setItem(2, 1, new QTableWidgetItem(QString::number(peakAmplitudes[2], 'f', 2))); // Changed from [0] to [2]
    }
}

//void MainWindow::updatePeakDisplay(const QList<float>& peakValues, const QList<float>& peakAmplitudes)
//{
//    // Make sure your table has at least 3 rows and 2 columns before setting items!
//    if (ui->tableWidget->rowCount() < 3) ui->tableWidget->setRowCount(3);
//    if (ui->tableWidget->columnCount() < 2) ui->tableWidget->setColumnCount(2);

//    if (peakValues.size() >= 1) {
//        float calcFreq = peakValues[0] + start_freq;

//        // 1. Convert float to QString, 2. Wrap in QTableWidgetItem, 3. Set in table
//        ui->tableWidget->setItem(0, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
//        ui->tableWidget->setItem(0, 1, new QTableWidgetItem(QString::number(peakAmplitudes[0], 'f', 2)));
//    }

//    if (peakValues.size() >= 2) {
//        float calcFreq = peakValues[1] + start_freq;

//        ui->tableWidget->setItem(1, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
//        ui->tableWidget->setItem(1, 1, new QTableWidgetItem(QString::number(peakAmplitudes[1], 'f', 2)));
//    }

//    if (peakValues.size() >= 3) {
//        float calcFreq = peakValues[2] + start_freq;

//        ui->tableWidget->setItem(2, 0, new QTableWidgetItem(QString::number(calcFreq, 'f', 2)));
//        ui->tableWidget->setItem(2, 1, new QTableWidgetItem(QString::number(peakAmplitudes[2], 'f', 2)));
//    }
//}

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
                       ui->plotWidget->getNoiseThreshold(),
                       ui->plotWidget->getPreAmp(),
                       ui->plotWidget->getAlpha(),
                       ui->plotWidget->getFFTLower(),
                       ui->plotWidget->getFFTUpper(),
                       static_cast<int>(frequency_offset),
                       static_cast<int>(step_size),
                       ui->plotWidget->getdBThreshold(),
                       ui->plotWidget->getdBReduction(),
                       ui->plotWidget->getdBScale());

    if (dlg.exec() == QDialog::Accepted)
    {
        int sampling_method     = dlg.selectedSamplingMethod();
        int display_mode        = dlg.selectDisplayMode();
        bool averagingEnabled   = dlg.isAveragingEnabled();
        bool pre_amp_en         = dlg.isPreAmpEnabled();
        int averagingNumber     = dlg.averagingNumber();
        float noise_thresh      = dlg.noiseThreshold();
        int alpha_value         = dlg.alphaValue();
        int fft_lower           = dlg.fftLower();
        int fft_upper           = dlg.fftUpper();
        float dB_threshold      = dlg.dBThreshold();
        float dB_reduction      = dlg.dBReduction();
        float dB_scale_temp     = dlg.dBScale();
        frequency_offset        = static_cast<float>(dlg.frequencyOffset());
        step_size               = dlg.stepSize();


        if (sampling_method == 0){
            ui->plotWidget->setDownSamplingMethod(MaxPooling);
        }
        else {
            ui->plotWidget->setDownSamplingMethod(AveragePooling);
        }


        if (display_mode == 0){
            ui->plotWidget->selectOutputDisplayMode(Linear);
        }
        else {
            ui->plotWidget->selectOutputDisplayMode(dB);
        }

        ui->plotWidget->setAveragingEnabled(averagingEnabled);
        ui->plotWidget->setAveragingNumber(averagingNumber);
        ui->plotWidget->setNoiseThreshold(noise_thresh);
        ui->plotWidget->setAlpha(alpha_value);
        ui->plotWidget->setFFTLower(fft_lower);
        ui->plotWidget->setFFTUpper(fft_upper);
        ui->plotWidget->setdBThreshold(dB_threshold);
        ui->plotWidget->setdBReduction(dB_reduction);
        ui->plotWidget->setdBScale(dB_scale_temp);
        ui->plotWidget->setPreAmp(pre_amp_en);

        if (pre_amp_en) {
            QProcess::execute("devmem", QStringList() << "0x41200000" << "w" << "0x1");
        }
        else {
            QProcess::execute("devmem", QStringList() << "0x41200000" << "w" << "0x0");
        }

    }

}
