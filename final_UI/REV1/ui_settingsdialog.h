/********************************************************************************
** Form generated from reading UI file 'settingsdialog.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGSDIALOG_H
#define UI_SETTINGSDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SettingsDialog
{
public:
    QPushButton *okButton;
    QPushButton *cancelButton;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QSpinBox *alphaSpinBox;
    QSpinBox *averagingSpinBox;
    QPushButton *frequencyButton;
    QLabel *fftUpperLabel;
    QLabel *frequencyLabel;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_3;
    QComboBox *comboBox_3;
    QSpinBox *noiseThresholdSpinBox;
    QComboBox *comboBox;
    QPushButton *fftUpperButton;
    QCheckBox *averagingCheckBox;
    QLabel *fftLowerLabel;
    QLabel *label;
    QPushButton *fftLowerButton;
    QCheckBox *preAmpCheckBox;
    QLabel *label_5;
    QLabel *label_4;
    QLabel *label_8;
    QPushButton *StepSizeButton;
    QLabel *stepsizeLabel;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout_2;
    QLabel *dBThresholdLabel;
    QPushButton *dBReductionButton;
    QLabel *dBReductionLabel;
    QPushButton *dBThresholdButton;
    QPushButton *dBScaleButton;
    QLabel *dBScaleLabel;

    void setupUi(QDialog *SettingsDialog)
    {
        if (SettingsDialog->objectName().isEmpty())
            SettingsDialog->setObjectName(QString::fromUtf8("SettingsDialog"));
        SettingsDialog->resize(668, 691);
        okButton = new QPushButton(SettingsDialog);
        okButton->setObjectName(QString::fromUtf8("okButton"));
        okButton->setGeometry(QRect(670, 550, 89, 25));
        cancelButton = new QPushButton(SettingsDialog);
        cancelButton->setObjectName(QString::fromUtf8("cancelButton"));
        cancelButton->setGeometry(QRect(560, 550, 89, 25));
        gridLayoutWidget = new QWidget(SettingsDialog);
        gridLayoutWidget->setObjectName(QString::fromUtf8("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(10, 20, 351, 330));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        alphaSpinBox = new QSpinBox(gridLayoutWidget);
        alphaSpinBox->setObjectName(QString::fromUtf8("alphaSpinBox"));
        alphaSpinBox->setValue(4);

        gridLayout->addWidget(alphaSpinBox, 5, 1, 1, 1);

        averagingSpinBox = new QSpinBox(gridLayoutWidget);
        averagingSpinBox->setObjectName(QString::fromUtf8("averagingSpinBox"));
        averagingSpinBox->setValue(4);

        gridLayout->addWidget(averagingSpinBox, 3, 1, 1, 1);

        frequencyButton = new QPushButton(gridLayoutWidget);
        frequencyButton->setObjectName(QString::fromUtf8("frequencyButton"));

        gridLayout->addWidget(frequencyButton, 9, 0, 1, 1);

        fftUpperLabel = new QLabel(gridLayoutWidget);
        fftUpperLabel->setObjectName(QString::fromUtf8("fftUpperLabel"));

        gridLayout->addWidget(fftUpperLabel, 8, 1, 1, 1);

        frequencyLabel = new QLabel(gridLayoutWidget);
        frequencyLabel->setObjectName(QString::fromUtf8("frequencyLabel"));

        gridLayout->addWidget(frequencyLabel, 9, 1, 1, 1);

        label_6 = new QLabel(gridLayoutWidget);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout->addWidget(label_6, 6, 0, 1, 1);

        label_7 = new QLabel(gridLayoutWidget);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout->addWidget(label_7, 4, 0, 1, 1);

        label_3 = new QLabel(gridLayoutWidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        comboBox_3 = new QComboBox(gridLayoutWidget);
        comboBox_3->setObjectName(QString::fromUtf8("comboBox_3"));
        comboBox_3->setEditable(false);

        gridLayout->addWidget(comboBox_3, 1, 1, 1, 1);

        noiseThresholdSpinBox = new QSpinBox(gridLayoutWidget);
        noiseThresholdSpinBox->setObjectName(QString::fromUtf8("noiseThresholdSpinBox"));
        noiseThresholdSpinBox->setValue(4);

        gridLayout->addWidget(noiseThresholdSpinBox, 4, 1, 1, 1);

        comboBox = new QComboBox(gridLayoutWidget);
        comboBox->setObjectName(QString::fromUtf8("comboBox"));
        comboBox->setEditable(false);

        gridLayout->addWidget(comboBox, 0, 1, 1, 1);

        fftUpperButton = new QPushButton(gridLayoutWidget);
        fftUpperButton->setObjectName(QString::fromUtf8("fftUpperButton"));

        gridLayout->addWidget(fftUpperButton, 8, 0, 1, 1);

        averagingCheckBox = new QCheckBox(gridLayoutWidget);
        averagingCheckBox->setObjectName(QString::fromUtf8("averagingCheckBox"));

        gridLayout->addWidget(averagingCheckBox, 2, 1, 1, 1);

        fftLowerLabel = new QLabel(gridLayoutWidget);
        fftLowerLabel->setObjectName(QString::fromUtf8("fftLowerLabel"));

        gridLayout->addWidget(fftLowerLabel, 7, 1, 1, 1);

        label = new QLabel(gridLayoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        fftLowerButton = new QPushButton(gridLayoutWidget);
        fftLowerButton->setObjectName(QString::fromUtf8("fftLowerButton"));

        gridLayout->addWidget(fftLowerButton, 7, 0, 1, 1);

        preAmpCheckBox = new QCheckBox(gridLayoutWidget);
        preAmpCheckBox->setObjectName(QString::fromUtf8("preAmpCheckBox"));

        gridLayout->addWidget(preAmpCheckBox, 6, 1, 1, 1);

        label_5 = new QLabel(gridLayoutWidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout->addWidget(label_5, 3, 0, 1, 1);

        label_4 = new QLabel(gridLayoutWidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 2, 0, 1, 1);

        label_8 = new QLabel(gridLayoutWidget);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout->addWidget(label_8, 5, 0, 1, 1);

        StepSizeButton = new QPushButton(gridLayoutWidget);
        StepSizeButton->setObjectName(QString::fromUtf8("StepSizeButton"));

        gridLayout->addWidget(StepSizeButton, 10, 0, 1, 1);

        stepsizeLabel = new QLabel(gridLayoutWidget);
        stepsizeLabel->setObjectName(QString::fromUtf8("stepsizeLabel"));

        gridLayout->addWidget(stepsizeLabel, 10, 1, 1, 1);

        gridLayoutWidget_2 = new QWidget(SettingsDialog);
        gridLayoutWidget_2->setObjectName(QString::fromUtf8("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(10, 390, 281, 161));
        gridLayout_2 = new QGridLayout(gridLayoutWidget_2);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        dBThresholdLabel = new QLabel(gridLayoutWidget_2);
        dBThresholdLabel->setObjectName(QString::fromUtf8("dBThresholdLabel"));

        gridLayout_2->addWidget(dBThresholdLabel, 0, 1, 1, 1);

        dBReductionButton = new QPushButton(gridLayoutWidget_2);
        dBReductionButton->setObjectName(QString::fromUtf8("dBReductionButton"));

        gridLayout_2->addWidget(dBReductionButton, 1, 0, 1, 1);

        dBReductionLabel = new QLabel(gridLayoutWidget_2);
        dBReductionLabel->setObjectName(QString::fromUtf8("dBReductionLabel"));

        gridLayout_2->addWidget(dBReductionLabel, 1, 1, 1, 1);

        dBThresholdButton = new QPushButton(gridLayoutWidget_2);
        dBThresholdButton->setObjectName(QString::fromUtf8("dBThresholdButton"));

        gridLayout_2->addWidget(dBThresholdButton, 0, 0, 1, 1);

        dBScaleButton = new QPushButton(gridLayoutWidget_2);
        dBScaleButton->setObjectName(QString::fromUtf8("dBScaleButton"));

        gridLayout_2->addWidget(dBScaleButton, 2, 0, 1, 1);

        dBScaleLabel = new QLabel(gridLayoutWidget_2);
        dBScaleLabel->setObjectName(QString::fromUtf8("dBScaleLabel"));

        gridLayout_2->addWidget(dBScaleLabel, 2, 1, 1, 1);


        retranslateUi(SettingsDialog);

        QMetaObject::connectSlotsByName(SettingsDialog);
    } // setupUi

    void retranslateUi(QDialog *SettingsDialog)
    {
        SettingsDialog->setWindowTitle(QApplication::translate("SettingsDialog", "Dialog", nullptr));
        okButton->setText(QApplication::translate("SettingsDialog", "Apply", nullptr));
        cancelButton->setText(QApplication::translate("SettingsDialog", "Cancel", nullptr));
        frequencyButton->setText(QApplication::translate("SettingsDialog", "Frequency Offset", nullptr));
        fftUpperLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        frequencyLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        label_6->setText(QApplication::translate("SettingsDialog", "Pre Amp ON", nullptr));
        label_7->setText(QApplication::translate("SettingsDialog", "Noise Threshold ", nullptr));
        label_3->setText(QApplication::translate("SettingsDialog", "Display Mode", nullptr));
        fftUpperButton->setText(QApplication::translate("SettingsDialog", "FFT Upper Range", nullptr));
        averagingCheckBox->setText(QApplication::translate("SettingsDialog", "CheckBox", nullptr));
        fftLowerLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        label->setText(QApplication::translate("SettingsDialog", "Down Sampling Method", nullptr));
        fftLowerButton->setText(QApplication::translate("SettingsDialog", "FFT Lower Range", nullptr));
        preAmpCheckBox->setText(QString());
        label_5->setText(QApplication::translate("SettingsDialog", "Averaging Count", nullptr));
        label_4->setText(QApplication::translate("SettingsDialog", "Enable Averaging", nullptr));
        label_8->setText(QApplication::translate("SettingsDialog", "Alpha Value", nullptr));
        StepSizeButton->setText(QApplication::translate("SettingsDialog", "Step Size", nullptr));
        stepsizeLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        dBThresholdLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        dBReductionButton->setText(QApplication::translate("SettingsDialog", "Sweep Time", nullptr));
        dBReductionLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
        dBThresholdButton->setText(QApplication::translate("SettingsDialog", "freq start", nullptr));
        dBScaleButton->setText(QApplication::translate("SettingsDialog", "dB Scale Offset", nullptr));
        dBScaleLabel->setText(QApplication::translate("SettingsDialog", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SettingsDialog: public Ui_SettingsDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGSDIALOG_H
