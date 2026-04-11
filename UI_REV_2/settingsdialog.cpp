#include "settingsdialog.h"
#include "ui_settingsdialog.h"
#include "numpaddialog.h"
#include <QPushButton>
#include <QDebug>

SettingsDialog::SettingsDialog(QWidget *parent,
                                int samplingMethod,
                                int displayMode,
                                bool averagingEnabled,
                                int averagingNumber,
                                float noise_thresh,
                                bool preAmpEnabled,
                                int alphaValue,
                                int fft_lower_1,
                                int fft_upper_1,
                                float dB_threshold_1,
                                float dB_reduction_1,
                                float dB_scale_1) :
    QDialog(parent),
    ui(new Ui::SettingsDialog)
{
    ui->setupUi(this);
      if (parent) {
          this->setWindowFlags(Qt::Window);
          this->setWindowState(Qt::WindowFullScreen);
      }

      this->setWindowModality(Qt::WindowModal);

      connect(ui->okButton, &QPushButton::clicked, this, &QDialog::accept);
      connect(ui->cancelButton, &QPushButton::clicked, this, &QDialog::reject);

      ui->comboBox->addItem("Max Pool Downsampling");
      ui->comboBox->addItem("Average Downsampling");

      ui->comboBox_3->addItem("Linear Mode");
      ui->comboBox_3->addItem("Db Mode");

      ui->comboBox->setCurrentIndex(samplingMethod);
      ui->comboBox_3->setCurrentIndex(displayMode);


      ui->averagingCheckBox->setChecked(averagingEnabled);

      ui->preAmpCheckBox->setChecked(preAmpEnabled);

      ui->averagingSpinBox->setValue(averagingNumber);

      ui->alphaSpinBox->setValue(alphaValue);

      ui->noiseThresholdSpinBox->setValue(noise_thresh);

      fft_lower = fft_lower_1;
      fft_upper = fft_upper_1;

      ui->fftLowerLabel->setText(QString::number(fft_lower, 'f', 0) + " Hz");
      ui->fftUpperLabel->setText(QString::number(fft_upper, 'f', 0) + " Hz");

      ui->dBThresholdLabel->setText(QString::number(dB_threshold_1, 'f', 0) + "dB");
      ui->dBReductionLabel->setText(QString::number(dB_reduction_1, 'f', 0) + "dB");

      ui->dBScaleLabel->setText(QString::number(dB_scale_1, 'f', 0) + "dB");

      connect(ui->fftLowerButton, &QPushButton::clicked, this, [this]() {
          NumPadDialog dialog(this);
          dialog.setTitle("Enter Lower Frequency");
          if(dialog.exec() == QDialog::Accepted)
          {
              fft_lower = dialog.value();
              ui->fftLowerLabel->setText(QString::number(fft_lower, 'f', 0) + " Hz");
          }
      });

      connect(ui->fftUpperButton, &QPushButton::clicked, this, [this]() {
          NumPadDialog dialog(this);
          dialog.setTitle("Enter Upper Frequency");
          if(dialog.exec() == QDialog::Accepted)
          {
              fft_upper = dialog.value();
              ui->fftUpperLabel->setText(QString::number(fft_upper, 'f', 0) + " Hz");
          }
      });

      connect(ui->dBThresholdButton, &QPushButton::clicked, this, [this]() {
          NumPadDialog dialog(this);
          dialog.setTitle("Enter dB Threshold");
          if(dialog.exec() == QDialog::Accepted)
          {
              dB_threshold = dialog.value();
              ui->dBThresholdLabel->setText(QString::number(dB_threshold, 'f', 0) + " dB");
          }
      });

      connect(ui->dBReductionButton, &QPushButton::clicked, this, [this]() {
          NumPadDialog dialog(this);
          dialog.setTitle("Enter dB Reduction");
          if(dialog.exec() == QDialog::Accepted)
          {
              dB_reduction = dialog.value();
              ui->dBReductionLabel->setText(QString::number(dB_reduction, 'f', 0) + " dB");
          }
      });

      connect(ui->dBScaleButton, &QPushButton::clicked, this, [this]() {
          NumPadDialog dialog(this);
          dialog.setTitle("Enter dB Scale Offset");
          if(dialog.exec() == QDialog::Accepted)
          {
              dB_scale = dialog.value();
              ui->dBScaleLabel->setText(QString::number(dB_scale, 'f', 0) + " dB");
          }
      });
}

SettingsDialog::~SettingsDialog()
{
    delete ui;
}

int SettingsDialog::selectedSamplingMethod() const{
    return ui->comboBox->currentIndex();
}

int SettingsDialog::selectDisplayMode() const{
    return ui->comboBox_3->currentIndex();
}

bool SettingsDialog::isAveragingEnabled() const {
    return ui->averagingCheckBox->isChecked();
}

bool SettingsDialog::isPreAmpEnabled() const {
    return ui->preAmpCheckBox->isChecked();
}

int SettingsDialog::averagingNumber() const {
    return ui->averagingSpinBox->value();
}

float SettingsDialog::noiseThreshold() const {
    return ui->noiseThresholdSpinBox->value();
}

int SettingsDialog::alphaValue() const {
    return ui->alphaSpinBox->value();
}

int SettingsDialog::fftLower() const {
    return fft_lower;
}

int SettingsDialog::fftUpper() const {
    return fft_upper;
}

float SettingsDialog::dBThreshold() const {
    return dB_threshold;
}

float SettingsDialog::dBReduction() const {
    return dB_reduction;
}

float SettingsDialog::dBScale() const {
    return dB_scale;
}


