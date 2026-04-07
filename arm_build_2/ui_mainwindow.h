/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.15.13
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>
#include "plotwidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    PlotWidget *plotWidget;
    QWidget *controlWidget;
    QPushButton *StartFreqBtn;
    QPushButton *EndFreqBtn;
    QPushButton *StepSizeBtn;
    QPushButton *EnterBtn;
    QLabel *span_label;
    QLabel *step_label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *rbw_label;
    QLabel *swt_label;
    QLabel *label_4;
    QWidget *controlWidget_2;
    QPushButton *ZoomInBtn;
    QPushButton *ZoomOutBtn;
    QPushButton *ResetBtn;
    QPushButton *RunBtn;
    QLabel *label_1;
    QWidget *controlWidget_3;
    QLabel *peakLabel;
    QLabel *peak1_label;
    QLabel *peak2_label;
    QLabel *peak3_label;
    QPushButton *SettingsBtn;
    QPushButton *AutosetBtn;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(833, 617);
        MainWindow->setStyleSheet(QString::fromUtf8(""));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        plotWidget = new PlotWidget(centralwidget);
        plotWidget->setObjectName(QString::fromUtf8("plotWidget"));
        plotWidget->setGeometry(QRect(20, 10, 601, 491));
        controlWidget = new QWidget(centralwidget);
        controlWidget->setObjectName(QString::fromUtf8("controlWidget"));
        controlWidget->setGeometry(QRect(640, 50, 171, 171));
        StartFreqBtn = new QPushButton(controlWidget);
        StartFreqBtn->setObjectName(QString::fromUtf8("StartFreqBtn"));
        StartFreqBtn->setGeometry(QRect(0, 10, 171, 31));
        StartFreqBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        EndFreqBtn = new QPushButton(controlWidget);
        EndFreqBtn->setObjectName(QString::fromUtf8("EndFreqBtn"));
        EndFreqBtn->setGeometry(QRect(0, 50, 171, 31));
        EndFreqBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        StepSizeBtn = new QPushButton(controlWidget);
        StepSizeBtn->setObjectName(QString::fromUtf8("StepSizeBtn"));
        StepSizeBtn->setGeometry(QRect(0, 90, 171, 31));
        StepSizeBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        EnterBtn = new QPushButton(controlWidget);
        EnterBtn->setObjectName(QString::fromUtf8("EnterBtn"));
        EnterBtn->setGeometry(QRect(0, 130, 171, 31));
        EnterBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #111111;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #000000;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #222222;\n"
"}"));
        span_label = new QLabel(centralwidget);
        span_label->setObjectName(QString::fromUtf8("span_label"));
        span_label->setGeometry(QRect(160, 540, 141, 17));
        step_label = new QLabel(centralwidget);
        step_label->setObjectName(QString::fromUtf8("step_label"));
        step_label->setGeometry(QRect(170, 510, 131, 17));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(50, 510, 131, 17));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(340, 510, 61, 17));
        rbw_label = new QLabel(centralwidget);
        rbw_label->setObjectName(QString::fromUtf8("rbw_label"));
        rbw_label->setGeometry(QRect(420, 510, 141, 17));
        swt_label = new QLabel(centralwidget);
        swt_label->setObjectName(QString::fromUtf8("swt_label"));
        swt_label->setGeometry(QRect(430, 540, 131, 17));
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(340, 540, 41, 17));
        controlWidget_2 = new QWidget(centralwidget);
        controlWidget_2->setObjectName(QString::fromUtf8("controlWidget_2"));
        controlWidget_2->setGeometry(QRect(640, 230, 171, 131));
        ZoomInBtn = new QPushButton(controlWidget_2);
        ZoomInBtn->setObjectName(QString::fromUtf8("ZoomInBtn"));
        ZoomInBtn->setGeometry(QRect(0, 10, 171, 31));
        ZoomInBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        ZoomOutBtn = new QPushButton(controlWidget_2);
        ZoomOutBtn->setObjectName(QString::fromUtf8("ZoomOutBtn"));
        ZoomOutBtn->setGeometry(QRect(0, 50, 171, 31));
        ZoomOutBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        ResetBtn = new QPushButton(controlWidget_2);
        ResetBtn->setObjectName(QString::fromUtf8("ResetBtn"));
        ResetBtn->setGeometry(QRect(0, 90, 171, 31));
        ResetBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #111111;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #000000;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #222222;\n"
"}"));
        RunBtn = new QPushButton(centralwidget);
        RunBtn->setObjectName(QString::fromUtf8("RunBtn"));
        RunBtn->setGeometry(QRect(640, 10, 111, 33));
        RunBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #000073;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #000066;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #000080;\n"
"}"));
        label_1 = new QLabel(centralwidget);
        label_1->setObjectName(QString::fromUtf8("label_1"));
        label_1->setGeometry(QRect(50, 540, 131, 17));
        controlWidget_3 = new QWidget(centralwidget);
        controlWidget_3->setObjectName(QString::fromUtf8("controlWidget_3"));
        controlWidget_3->setGeometry(QRect(640, 370, 171, 151));
        controlWidget_3->setStyleSheet(QString::fromUtf8("background-color: #e4e4e4;\n"
"border: 1px solid #aaaaaa;\n"
"border-radius: 4px;"));
        peakLabel = new QLabel(controlWidget_3);
        peakLabel->setObjectName(QString::fromUtf8("peakLabel"));
        peakLabel->setGeometry(QRect(50, 20, 101, 17));
        peakLabel->setStyleSheet(QString::fromUtf8("border: 0px "));
        peak1_label = new QLabel(controlWidget_3);
        peak1_label->setObjectName(QString::fromUtf8("peak1_label"));
        peak1_label->setGeometry(QRect(20, 50, 131, 17));
        peak1_label->setStyleSheet(QString::fromUtf8("border: 0px "));
        peak2_label = new QLabel(controlWidget_3);
        peak2_label->setObjectName(QString::fromUtf8("peak2_label"));
        peak2_label->setGeometry(QRect(20, 80, 131, 17));
        peak2_label->setStyleSheet(QString::fromUtf8("border: 0px "));
        peak3_label = new QLabel(controlWidget_3);
        peak3_label->setObjectName(QString::fromUtf8("peak3_label"));
        peak3_label->setGeometry(QRect(20, 110, 131, 17));
        peak3_label->setStyleSheet(QString::fromUtf8("border: 0px "));
        SettingsBtn = new QPushButton(centralwidget);
        SettingsBtn->setObjectName(QString::fromUtf8("SettingsBtn"));
        SettingsBtn->setGeometry(QRect(760, 10, 41, 31));
        SettingsBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #444444;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #333333;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #555555;\n"
"}"));
        AutosetBtn = new QPushButton(centralwidget);
        AutosetBtn->setObjectName(QString::fromUtf8("AutosetBtn"));
        AutosetBtn->setGeometry(QRect(640, 540, 171, 31));
        AutosetBtn->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"  background-color: #111111;\n"
"  color: white;\n"
"  border-radius: 8px;\n"
"  padding: 8px 16px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"  background-color: #000000;\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"  background-color: #222222;\n"
"}"));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 833, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        StartFreqBtn->setText(QCoreApplication::translate("MainWindow", "Start Frequency", nullptr));
        EndFreqBtn->setText(QCoreApplication::translate("MainWindow", "End Frequency", nullptr));
        StepSizeBtn->setText(QCoreApplication::translate("MainWindow", "Step Size", nullptr));
        EnterBtn->setText(QCoreApplication::translate("MainWindow", "Calibrate", nullptr));
        span_label->setText(QString());
        step_label->setText(QString());
        label_2->setText(QCoreApplication::translate("MainWindow", "Step :", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "RBW    :", nullptr));
        rbw_label->setText(QString());
        swt_label->setText(QString());
        label_4->setText(QCoreApplication::translate("MainWindow", "SWT  :", nullptr));
        ZoomInBtn->setText(QCoreApplication::translate("MainWindow", "Zoom In", nullptr));
        ZoomOutBtn->setText(QCoreApplication::translate("MainWindow", "Zoom Out", nullptr));
        ResetBtn->setText(QCoreApplication::translate("MainWindow", "Reset", nullptr));
        RunBtn->setText(QCoreApplication::translate("MainWindow", "Run / Stop", nullptr));
        label_1->setText(QCoreApplication::translate("MainWindow", "Span :", nullptr));
        peakLabel->setText(QCoreApplication::translate("MainWindow", "Top Peaks", nullptr));
        peak1_label->setText(QCoreApplication::translate("MainWindow", "1:", nullptr));
        peak2_label->setText(QCoreApplication::translate("MainWindow", "2:", nullptr));
        peak3_label->setText(QCoreApplication::translate("MainWindow", "3:", nullptr));
        SettingsBtn->setText(QCoreApplication::translate("MainWindow", "Settings", nullptr));
        AutosetBtn->setText(QCoreApplication::translate("MainWindow", "Autoset", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
