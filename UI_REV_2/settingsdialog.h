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
        int         alpha_value         = 1,
        int         fft_lower_1         = 25,
        int         fft_upper_1         = 89,
        float       dB_threshold        = 130,
        float       dB_reduction        = 30,
        float       dB_scale            = 0
                                                );

    ~SettingsDialog();
        int        selectedSamplingMethod() const;
        int        selectDisplayMode() const;
        bool       isAveragingEnabled() const;
        bool       isPreAmpEnabled() const;
        int        averagingNumber() const;
        float      noiseThreshold() const;
        int        alphaValue() const;
        int        fftLower() const;
        int        fftUpper() const;
        float      dBThreshold() const;
        float      dBReduction() const;
        float      dBScale() const;


        int        fft_lower = 25;
        int        fft_upper = 89;

        float      dB_threshold = 130;
        float      dB_reduction = 30;
        float      dB_scale = 0;

private:
        Ui::SettingsDialog *ui;
};

#endif // SETTINGSDIALOG_H
