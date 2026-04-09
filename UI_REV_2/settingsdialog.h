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
    explicit SettingsDialog(
        QWidget     *parent             = nullptr,
        int         samplingMethod      = 0,
        int         displayMode         = 0,
        bool        averagingEnabled    = false,
        int         averagingNumber     = 1,
        float       noise_thresh        = 0.0f,
        bool        preAmpEnabled       = false,
        int         alpha_value         = 1
                                                );

    ~SettingsDialog();
        int        selectedSamplingMethod() const;
        int        selectDisplayMode() const;
        bool       isAveragingEnabled() const;
        bool       isPreAmpEnabled() const;
        int        averagingNumber() const;
        float      noiseThreshold() const;
        int        alphaValue() const;

private:
        Ui::SettingsDialog *ui;
};

#endif // SETTINGSDIALOG_H
