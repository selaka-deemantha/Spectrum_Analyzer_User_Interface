/********************************************************************************
** Form generated from reading UI file 'settingsdialog.ui'
**
** Created by: Qt User Interface Compiler version 5.15.13
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
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>

QT_BEGIN_NAMESPACE

class Ui_SettingsDialog
{
public:
    QComboBox *comboBox;
    QLabel *label;
    QPushButton *okButton;
    QPushButton *cancelButton;
    QLabel *label_3;
    QComboBox *comboBox_3;
    QLabel *label_4;
    QSpinBox *averagingSpinBox;
    QLabel *label_5;
    QLabel *label_6;
    QCheckBox *averagingCheckBox_2;
    QCheckBox *averagingCheckBox;
    QLabel *label_7;
    QSpinBox *noiseThresholdSpinBox;
    QLabel *label_8;
    QCheckBox *noiseFloorLevelCheckBox;
    QLabel *label_9;
    QSpinBox *sweepDelaySpinBox;

    void setupUi(QDialog *SettingsDialog)
    {
        if (SettingsDialog->objectName().isEmpty())
            SettingsDialog->setObjectName(QString::fromUtf8("SettingsDialog"));
        SettingsDialog->resize(668, 691);
        comboBox = new QComboBox(SettingsDialog);
        comboBox->setObjectName(QString::fromUtf8("comboBox"));
        comboBox->setGeometry(QRect(230, 30, 201, 25));
        comboBox->setEditable(false);
        label = new QLabel(SettingsDialog);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(10, 30, 171, 17));
        okButton = new QPushButton(SettingsDialog);
        okButton->setObjectName(QString::fromUtf8("okButton"));
        okButton->setGeometry(QRect(670, 550, 89, 25));
        cancelButton = new QPushButton(SettingsDialog);
        cancelButton->setObjectName(QString::fromUtf8("cancelButton"));
        cancelButton->setGeometry(QRect(560, 550, 89, 25));
        label_3 = new QLabel(SettingsDialog);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(10, 70, 171, 17));
        comboBox_3 = new QComboBox(SettingsDialog);
        comboBox_3->setObjectName(QString::fromUtf8("comboBox_3"));
        comboBox_3->setGeometry(QRect(230, 70, 201, 25));
        comboBox_3->setEditable(false);
        label_4 = new QLabel(SettingsDialog);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(10, 120, 171, 17));
        averagingSpinBox = new QSpinBox(SettingsDialog);
        averagingSpinBox->setObjectName(QString::fromUtf8("averagingSpinBox"));
        averagingSpinBox->setGeometry(QRect(230, 150, 51, 41));
        averagingSpinBox->setValue(4);
        label_5 = new QLabel(SettingsDialog);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(10, 150, 171, 17));
        label_6 = new QLabel(SettingsDialog);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(10, 180, 171, 17));
        averagingCheckBox_2 = new QCheckBox(SettingsDialog);
        averagingCheckBox_2->setObjectName(QString::fromUtf8("averagingCheckBox_2"));
        averagingCheckBox_2->setGeometry(QRect(230, 190, 92, 23));
        averagingCheckBox = new QCheckBox(SettingsDialog);
        averagingCheckBox->setObjectName(QString::fromUtf8("averagingCheckBox"));
        averagingCheckBox->setGeometry(QRect(230, 120, 92, 23));
        label_7 = new QLabel(SettingsDialog);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setGeometry(QRect(10, 220, 171, 17));
        noiseThresholdSpinBox = new QSpinBox(SettingsDialog);
        noiseThresholdSpinBox->setObjectName(QString::fromUtf8("noiseThresholdSpinBox"));
        noiseThresholdSpinBox->setGeometry(QRect(227, 220, 51, 41));
        noiseThresholdSpinBox->setValue(4);
        label_8 = new QLabel(SettingsDialog);
        label_8->setObjectName(QString::fromUtf8("label_8"));
        label_8->setGeometry(QRect(10, 300, 171, 17));
        noiseFloorLevelCheckBox = new QCheckBox(SettingsDialog);
        noiseFloorLevelCheckBox->setObjectName(QString::fromUtf8("noiseFloorLevelCheckBox"));
        noiseFloorLevelCheckBox->setGeometry(QRect(230, 300, 92, 23));
        label_9 = new QLabel(SettingsDialog);
        label_9->setObjectName(QString::fromUtf8("label_9"));
        label_9->setGeometry(QRect(10, 390, 171, 17));
        sweepDelaySpinBox = new QSpinBox(SettingsDialog);
        sweepDelaySpinBox->setObjectName(QString::fromUtf8("sweepDelaySpinBox"));
        sweepDelaySpinBox->setGeometry(QRect(220, 370, 51, 41));
        sweepDelaySpinBox->setValue(4);

        retranslateUi(SettingsDialog);

        QMetaObject::connectSlotsByName(SettingsDialog);
    } // setupUi

    void retranslateUi(QDialog *SettingsDialog)
    {
        SettingsDialog->setWindowTitle(QCoreApplication::translate("SettingsDialog", "Dialog", nullptr));
        label->setText(QCoreApplication::translate("SettingsDialog", "Down Sampling Method", nullptr));
        okButton->setText(QCoreApplication::translate("SettingsDialog", "Apply", nullptr));
        cancelButton->setText(QCoreApplication::translate("SettingsDialog", "Cancel", nullptr));
        label_3->setText(QCoreApplication::translate("SettingsDialog", "Display Mode", nullptr));
        label_4->setText(QCoreApplication::translate("SettingsDialog", "Enable Averaging", nullptr));
        label_5->setText(QCoreApplication::translate("SettingsDialog", "Averaging Count", nullptr));
        label_6->setText(QCoreApplication::translate("SettingsDialog", "Pre Amp ON", nullptr));
        averagingCheckBox_2->setText(QString());
        averagingCheckBox->setText(QCoreApplication::translate("SettingsDialog", "CheckBox", nullptr));
        label_7->setText(QCoreApplication::translate("SettingsDialog", "Noise Threshold ", nullptr));
        label_8->setText(QCoreApplication::translate("SettingsDialog", "Noise Floor Line Display", nullptr));
        noiseFloorLevelCheckBox->setText(QCoreApplication::translate("SettingsDialog", "CheckBox", nullptr));
        label_9->setText(QCoreApplication::translate("SettingsDialog", "Sweep Delay", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SettingsDialog: public Ui_SettingsDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGSDIALOG_H
