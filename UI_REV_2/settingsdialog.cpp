#include "settingsdialog.h"
#include "ui_settingsdialog.h"

SettingsDialog::SettingsDialog(QWidget *parent,
                                int samplingMethod,
                                int displayMode,
                                bool averagingEnabled,
                                int averagingNumber,
                                float noise_thresh) :
    QDialog(parent),
    ui(new Ui::SettingsDialog)
{
    ui->setupUi(this);
    // Check if we have a parent (main window)
      if (parent) {
          // Make fullscreen
          this->setWindowFlags(Qt::Window);
          this->setWindowState(Qt::WindowFullScreen);
      }

      // Optional: modal so it blocks main window
      this->setWindowModality(Qt::WindowModal);

      connect(ui->okButton, &QPushButton::clicked, this, &QDialog::accept);
      connect(ui->cancelButton, &QPushButton::clicked, this, &QDialog::reject);

      ui->comboBox->addItem("Max Pool Downsampling");
      ui->comboBox->addItem("Average Downsampling");

      ui->comboBox_3->addItem("Linear Mode");
      ui->comboBox_3->addItem("Db Mode");

      // ---- Set Current Selections ----
      ui->comboBox->setCurrentIndex(samplingMethod);
      ui->comboBox_3->setCurrentIndex(displayMode);


      ui->averagingCheckBox->setChecked(averagingEnabled);
      ui->averagingSpinBox->setValue(averagingNumber);

      ui->noiseThresholdSpinBox->setValue(noise_thresh);

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


// --- getters for averaging ---
bool SettingsDialog::isAveragingEnabled() const {
    return ui->averagingCheckBox->isChecked();
}

int SettingsDialog::averagingNumber() const {
    return ui->averagingSpinBox->value();
}

float SettingsDialog::noiseThreshold() const {
    return ui->noiseThresholdSpinBox->value();
}
