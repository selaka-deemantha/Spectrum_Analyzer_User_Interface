/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "plotwidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    PlotWidget *plotWidget;
    QLabel *span_label;
    QLabel *step_label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *rbw_label;
    QLabel *swt_label;
    QLabel *label_4;
    QLabel *label_1;
    QWidget *controlWidget;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout_2;
    QPushButton *RunBtn;
    QPushButton *SettingsBtn;
    QPushButton *StartFreqBtn;
    QPushButton *EndFreqBtn;
    QPushButton *EnterBtn;
    QPushButton *ZoomInBtn;
    QPushButton *ZoomOutBtn;
    QPushButton *AutosetBtn;
    QPushButton *ResetBtn;
    QTableWidget *tableWidget;
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
        label_1 = new QLabel(centralwidget);
        label_1->setObjectName(QString::fromUtf8("label_1"));
        label_1->setGeometry(QRect(50, 540, 131, 17));
        controlWidget = new QWidget(centralwidget);
        controlWidget->setObjectName(QString::fromUtf8("controlWidget"));
        controlWidget->setGeometry(QRect(630, 10, 201, 551));
        controlWidget->setMinimumSize(QSize(0, 150));
        verticalLayoutWidget = new QWidget(controlWidget);
        verticalLayoutWidget->setObjectName(QString::fromUtf8("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(0, 10, 171, 386));
        verticalLayout_2 = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        RunBtn = new QPushButton(verticalLayoutWidget);
        RunBtn->setObjectName(QString::fromUtf8("RunBtn"));
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

        verticalLayout_2->addWidget(RunBtn);

        SettingsBtn = new QPushButton(verticalLayoutWidget);
        SettingsBtn->setObjectName(QString::fromUtf8("SettingsBtn"));
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

        verticalLayout_2->addWidget(SettingsBtn);

        StartFreqBtn = new QPushButton(verticalLayoutWidget);
        StartFreqBtn->setObjectName(QString::fromUtf8("StartFreqBtn"));
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

        verticalLayout_2->addWidget(StartFreqBtn);

        EndFreqBtn = new QPushButton(verticalLayoutWidget);
        EndFreqBtn->setObjectName(QString::fromUtf8("EndFreqBtn"));
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

        verticalLayout_2->addWidget(EndFreqBtn);

        EnterBtn = new QPushButton(verticalLayoutWidget);
        EnterBtn->setObjectName(QString::fromUtf8("EnterBtn"));
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

        verticalLayout_2->addWidget(EnterBtn);

        ZoomInBtn = new QPushButton(verticalLayoutWidget);
        ZoomInBtn->setObjectName(QString::fromUtf8("ZoomInBtn"));
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

        verticalLayout_2->addWidget(ZoomInBtn);

        ZoomOutBtn = new QPushButton(verticalLayoutWidget);
        ZoomOutBtn->setObjectName(QString::fromUtf8("ZoomOutBtn"));
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

        verticalLayout_2->addWidget(ZoomOutBtn);

        AutosetBtn = new QPushButton(verticalLayoutWidget);
        AutosetBtn->setObjectName(QString::fromUtf8("AutosetBtn"));
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

        verticalLayout_2->addWidget(AutosetBtn);

        ResetBtn = new QPushButton(verticalLayoutWidget);
        ResetBtn->setObjectName(QString::fromUtf8("ResetBtn"));
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

        verticalLayout_2->addWidget(ResetBtn);

        tableWidget = new QTableWidget(controlWidget);
        if (tableWidget->columnCount() < 2)
            tableWidget->setColumnCount(2);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(0, __qtablewidgetitem);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(1, __qtablewidgetitem1);
        if (tableWidget->rowCount() < 3)
            tableWidget->setRowCount(3);
        QTableWidgetItem *__qtablewidgetitem2 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(0, __qtablewidgetitem2);
        QTableWidgetItem *__qtablewidgetitem3 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(1, __qtablewidgetitem3);
        QTableWidgetItem *__qtablewidgetitem4 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(2, __qtablewidgetitem4);
        QTableWidgetItem *__qtablewidgetitem5 = new QTableWidgetItem();
        tableWidget->setItem(0, 0, __qtablewidgetitem5);
        tableWidget->setObjectName(QString::fromUtf8("tableWidget"));
        tableWidget->setGeometry(QRect(0, 390, 191, 171));
        tableWidget->setFrameShape(QFrame::StyledPanel);
        tableWidget->setShowGrid(true);
        tableWidget->setGridStyle(Qt::SolidLine);
        tableWidget->setCornerButtonEnabled(true);
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
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", nullptr));
        span_label->setText(QString());
        step_label->setText(QString());
        label_2->setText(QApplication::translate("MainWindow", "Step :", nullptr));
        label_3->setText(QApplication::translate("MainWindow", "RBW    :", nullptr));
        rbw_label->setText(QString());
        swt_label->setText(QString());
        label_4->setText(QApplication::translate("MainWindow", "SWT  :", nullptr));
        label_1->setText(QApplication::translate("MainWindow", "Span :", nullptr));
        RunBtn->setText(QApplication::translate("MainWindow", "Run / Stop", nullptr));
        SettingsBtn->setText(QApplication::translate("MainWindow", "Settings", nullptr));
        StartFreqBtn->setText(QApplication::translate("MainWindow", "Start Frequency", nullptr));
        EndFreqBtn->setText(QApplication::translate("MainWindow", "End Frequency", nullptr));
        EnterBtn->setText(QApplication::translate("MainWindow", "Calibrate", nullptr));
        ZoomInBtn->setText(QApplication::translate("MainWindow", "Zoom In", nullptr));
        ZoomOutBtn->setText(QApplication::translate("MainWindow", "Zoom Out", nullptr));
        AutosetBtn->setText(QApplication::translate("MainWindow", "Autoset", nullptr));
        ResetBtn->setText(QApplication::translate("MainWindow", "Reset", nullptr));
        QTableWidgetItem *___qtablewidgetitem = tableWidget->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("MainWindow", "Frequency", nullptr));
        QTableWidgetItem *___qtablewidgetitem1 = tableWidget->horizontalHeaderItem(1);
        ___qtablewidgetitem1->setText(QApplication::translate("MainWindow", "Amplitude", nullptr));
        QTableWidgetItem *___qtablewidgetitem2 = tableWidget->verticalHeaderItem(0);
        ___qtablewidgetitem2->setText(QApplication::translate("MainWindow", "1", nullptr));
        QTableWidgetItem *___qtablewidgetitem3 = tableWidget->verticalHeaderItem(1);
        ___qtablewidgetitem3->setText(QApplication::translate("MainWindow", "2", nullptr));
        QTableWidgetItem *___qtablewidgetitem4 = tableWidget->verticalHeaderItem(2);
        ___qtablewidgetitem4->setText(QApplication::translate("MainWindow", "3", nullptr));

        const bool __sortingEnabled = tableWidget->isSortingEnabled();
        tableWidget->setSortingEnabled(false);
        tableWidget->setSortingEnabled(__sortingEnabled);

    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
