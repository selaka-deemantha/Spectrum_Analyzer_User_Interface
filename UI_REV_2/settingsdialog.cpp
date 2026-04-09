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
                                int fft_upper_1) :
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

      ui->fftLowerLabel->setText(QString::number(fft_lower_1, 'f', 0) + " Hz");
      ui->fftUpperLabel->setText(QString::number(fft_upper_1, 'f', 0) + " Hz");

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


