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
                            int dataSource = 0,
                            int displayMode = 0);
    ~SettingsDialog();
    int selectedSamplingMethod() const;
    int selectDebuggingMethod() const;
    int selectDisplayMode() const;

private:
    Ui::SettingsDialog *ui;
};

#endif // SETTINGSDIALOG_H
