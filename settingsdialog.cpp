#include "settingsdialog.h"
#include "ui_settingsdialog.h"

SettingsDialog::SettingsDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::SettingsDialog)
{
    ui->setupUi(this);
    // Check if we have a parent (main window)
      if (parent) {
          // Resize to match parent
          this->resize(parent->size());
          this->move(parent->pos());  // optional: align top-left
      }

      // Optional: remove window frame for overlay look
      this->setWindowFlags(Qt::Dialog | Qt::WindowTitleHint | Qt::WindowCloseButtonHint);

      // Optional: modal so it blocks main window
      this->setWindowModality(Qt::WindowModal);

      connect(ui->okButton, &QPushButton::clicked, this, &QDialog::accept);
      connect(ui->cancelButton, &QPushButton::clicked, this, &QDialog::reject);

      ui->comboBox->addItem("Max Pool Downsampling");
      ui->comboBox->addItem("Average Downsampling");

      ui->comboBox_2->addItem("Read from DMA");
      ui->comboBox_2->addItem("Read random data");
      ui->comboBox_2->addItem("Read from test file");

}

SettingsDialog::~SettingsDialog()
{
    delete ui;
}

int SettingsDialog::selectedSamplingMethod() const{
    return ui->comboBox->currentIndex();
}

int SettingsDialog::selectDebuggingMethod() const{
    return ui->comboBox_2->currentIndex();
}
