#ifndef SETTINGSDIALOG_H
#define SETTINGSDIALOG_H

#include <QDialog>

namespace Ui {
class SettingsDialog;
}

class SettingsDialog : public QDialog
{
    Q_OBJECT

public:
    explicit SettingsDialog(QWidget *parent = nullptr,
                            int samplingMethod = 0,
                            int displayMode = 0,
                            bool averagingEnabled = false,
                            int averagingNumber = 1);
    ~SettingsDialog();
    int selectedSamplingMethod() const;
    int selectDisplayMode() const;

    // --- New getters for averaging ---
     bool isAveragingEnabled() const;
     int averagingNumber() const;

private:
    Ui::SettingsDialog *ui;
};

#endif // SETTINGSDIALOG_H
