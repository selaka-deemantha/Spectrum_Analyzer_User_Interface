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
    QCheckBox *averagingCheckBox;
    QComboBox *comboBox;
    QLabel *label_6;
    QLabel *label_4;
    QLabel *label_5;
    QComboBox *comboBox_3;
    QSpinBox *averagingSpinBox;
    QLabel *label;
    QSpinBox *noiseThresholdSpinBox;
    QLabel *label_3;
    QCheckBox *preAmpCheckBox;
    QLabel *label_7;
    QLabel *label_8;
    QSpinBox *alphaSpinBox;

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
        gridLayoutWidget->setGeometry(QRect(10, 20, 351, 291));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        averagingCheckBox = new QCheckBox(gridLayoutWidget);
        averagingCheckBox->setObjectName(QString::fromUtf8("averagingCheckBox"));

        gridLayout->addWidget(averagingCheckBox, 2, 1, 1, 1);

        comboBox = new QComboBox(gridLayoutWidget);
        comboBox->setObjectName(QString::fromUtf8("comboBox"));
        comboBox->setEditable(false);

        gridLayout->addWidget(comboBox, 0, 1, 1, 1);

        label_6 = new QLabel(gridLayoutWidget);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout->addWidget(label_6, 6, 0, 1, 1);

        label_4 = new QLabel(gridLayoutWidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 2, 0, 1, 1);

        label_5 = new QLabel(gridLayoutWidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout->addWidget(label_5, 3, 0, 1, 1);

        comboBox_3 = new QComboBox(gridLayoutWidget);
        comboBox_3->setObjectName(QString::fromUtf8("comboBox_3"));
        comboBox_3->setEditable(false);

        gridLayout->addWidget(comboBox_3, 1, 1, 1, 1);

        averagingSpinBox = new QSpinBox(gridLayoutWidget);
        averagingSpinBox->setObjectName(QString::fromUtf8("averagingSpinBox"));
        averagingSpinBox->setValue(4);

        gridLayout->addWidget(averagingSpinBox, 3, 1, 1, 1);

        label = new QLabel(gridLayoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        noiseThresholdSpinBox = new QSpinBox(gridLayoutWidget);
        noiseThresholdSpinBox->setObjectName(QString::fromUtf8("noiseThresholdSpinBox"));
        noiseThresholdSpinBox->setValue(4);

        gridLayout->addWidget(noiseThresholdSpinBox, 4, 1, 1, 1);

        label_3 = new QLabel(gridLayoutWidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        preAmpCheckBox = new QCheckBox(gridLayoutWidget);
        preAmpCheckBox->setObjectName(QString::fromUtf8("preAmpCheckBox"));

        gridLayout->addWidget(preAmpCheckBox, 6, 1, 1, 1);

        label_7 = new QLabel(gridLayoutWidget);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout->addWidget(label_7, 4, 0, 1, 1);

        label_8 = new QLabel(gridLayoutWidget);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout->addWidget(label_8, 5, 0, 1, 1);

        alphaSpinBox = new QSpinBox(gridLayoutWidget);
        alphaSpinBox->setObjectName(QString::fromUtf8("alphaSpinBox"));
        alphaSpinBox->setValue(4);

        gridLayout->addWidget(alphaSpinBox, 5, 1, 1, 1);


        retranslateUi(SettingsDialog);

        QMetaObject::connectSlotsByName(SettingsDialog);
    } // setupUi

    void retranslateUi(QDialog *SettingsDialog)
    {
        SettingsDialog->setWindowTitle(QCoreApplication::translate("SettingsDialog", "Dialog", nullptr));
        okButton->setText(QCoreApplication::translate("SettingsDialog", "Apply", nullptr));
        cancelButton->setText(QCoreApplication::translate("SettingsDialog", "Cancel", nullptr));
        averagingCheckBox->setText(QCoreApplication::translate("SettingsDialog", "CheckBox", nullptr));
        label_6->setText(QCoreApplication::translate("SettingsDialog", "Pre Amp ON", nullptr));
        label_4->setText(QCoreApplication::translate("SettingsDialog", "Enable Averaging", nullptr));
        label_5->setText(QCoreApplication::translate("SettingsDialog", "Averaging Count", nullptr));
        label->setText(QCoreApplication::translate("SettingsDialog", "Down Sampling Method", nullptr));
        label_3->setText(QCoreApplication::translate("SettingsDialog", "Display Mode", nullptr));
        preAmpCheckBox->setText(QString());
        label_7->setText(QCoreApplication::translate("SettingsDialog", "Noise Threshold ", nullptr));
        label_8->setText(QCoreApplication::translate("SettingsDialog", "Alpha Value", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SettingsDialog: public Ui_SettingsDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGSDIALOG_H
