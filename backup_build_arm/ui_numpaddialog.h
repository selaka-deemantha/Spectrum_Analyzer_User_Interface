/********************************************************************************
** Form generated from reading UI file 'numpaddialog.ui'
**
** Created by: Qt User Interface Compiler version 5.15.13
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NUMPADDIALOG_H
#define UI_NUMPADDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NumPadDialog
{
public:
    QWidget *widget;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QPushButton *pushButton_5;
    QPushButton *pushButton_12;
    QPushButton *pushButton_10;
    QPushButton *pushButton_2;
    QPushButton *pushButton_7;
    QPushButton *pushButton;
    QPushButton *pushButton_11;
    QPushButton *pushButton_3;
    QPushButton *pushButton_8;
    QPushButton *pushButton_6;
    QPushButton *pushButton_9;
    QPushButton *pushButton_4;
    QLineEdit *displayEdit;

    void setupUi(QDialog *NumPadDialog)
    {
        if (NumPadDialog->objectName().isEmpty())
            NumPadDialog->setObjectName(QString::fromUtf8("NumPadDialog"));
        NumPadDialog->resize(431, 371);
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(NumPadDialog->sizePolicy().hasHeightForWidth());
        NumPadDialog->setSizePolicy(sizePolicy);
        widget = new QWidget(NumPadDialog);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setGeometry(QRect(-40, 10, 729, 419));
        gridLayoutWidget = new QWidget(widget);
        gridLayoutWidget->setObjectName(QString::fromUtf8("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(50, 60, 411, 291));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        pushButton_5 = new QPushButton(gridLayoutWidget);
        pushButton_5->setObjectName(QString::fromUtf8("pushButton_5"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_5->sizePolicy().hasHeightForWidth());
        pushButton_5->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_5, 1, 1, 1, 1);

        pushButton_12 = new QPushButton(gridLayoutWidget);
        pushButton_12->setObjectName(QString::fromUtf8("pushButton_12"));
        sizePolicy1.setHeightForWidth(pushButton_12->sizePolicy().hasHeightForWidth());
        pushButton_12->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_12, 3, 2, 1, 1);

        pushButton_10 = new QPushButton(gridLayoutWidget);
        pushButton_10->setObjectName(QString::fromUtf8("pushButton_10"));
        sizePolicy1.setHeightForWidth(pushButton_10->sizePolicy().hasHeightForWidth());
        pushButton_10->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_10, 3, 0, 1, 1);

        pushButton_2 = new QPushButton(gridLayoutWidget);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        sizePolicy1.setHeightForWidth(pushButton_2->sizePolicy().hasHeightForWidth());
        pushButton_2->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_2, 0, 1, 1, 1);

        pushButton_7 = new QPushButton(gridLayoutWidget);
        pushButton_7->setObjectName(QString::fromUtf8("pushButton_7"));
        sizePolicy1.setHeightForWidth(pushButton_7->sizePolicy().hasHeightForWidth());
        pushButton_7->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_7, 2, 0, 1, 1);

        pushButton = new QPushButton(gridLayoutWidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        sizePolicy1.setHeightForWidth(pushButton->sizePolicy().hasHeightForWidth());
        pushButton->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton, 0, 0, 1, 1);

        pushButton_11 = new QPushButton(gridLayoutWidget);
        pushButton_11->setObjectName(QString::fromUtf8("pushButton_11"));
        sizePolicy1.setHeightForWidth(pushButton_11->sizePolicy().hasHeightForWidth());
        pushButton_11->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_11, 3, 1, 1, 1);

        pushButton_3 = new QPushButton(gridLayoutWidget);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        sizePolicy1.setHeightForWidth(pushButton_3->sizePolicy().hasHeightForWidth());
        pushButton_3->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_3, 0, 2, 1, 1);

        pushButton_8 = new QPushButton(gridLayoutWidget);
        pushButton_8->setObjectName(QString::fromUtf8("pushButton_8"));
        sizePolicy1.setHeightForWidth(pushButton_8->sizePolicy().hasHeightForWidth());
        pushButton_8->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_8, 2, 1, 1, 1);

        pushButton_6 = new QPushButton(gridLayoutWidget);
        pushButton_6->setObjectName(QString::fromUtf8("pushButton_6"));
        sizePolicy1.setHeightForWidth(pushButton_6->sizePolicy().hasHeightForWidth());
        pushButton_6->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_6, 1, 2, 1, 1);

        pushButton_9 = new QPushButton(gridLayoutWidget);
        pushButton_9->setObjectName(QString::fromUtf8("pushButton_9"));
        sizePolicy1.setHeightForWidth(pushButton_9->sizePolicy().hasHeightForWidth());
        pushButton_9->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_9, 2, 2, 1, 1);

        pushButton_4 = new QPushButton(gridLayoutWidget);
        pushButton_4->setObjectName(QString::fromUtf8("pushButton_4"));
        sizePolicy1.setHeightForWidth(pushButton_4->sizePolicy().hasHeightForWidth());
        pushButton_4->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(pushButton_4, 1, 0, 1, 1);

        displayEdit = new QLineEdit(widget);
        displayEdit->setObjectName(QString::fromUtf8("displayEdit"));
        displayEdit->setGeometry(QRect(50, 0, 411, 51));
        displayEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        displayEdit->setReadOnly(true);

        retranslateUi(NumPadDialog);

        QMetaObject::connectSlotsByName(NumPadDialog);
    } // setupUi

    void retranslateUi(QDialog *NumPadDialog)
    {
        NumPadDialog->setWindowTitle(QCoreApplication::translate("NumPadDialog", "Dialog", nullptr));
        pushButton_5->setText(QCoreApplication::translate("NumPadDialog", "5", nullptr));
        pushButton_12->setText(QCoreApplication::translate("NumPadDialog", "ENT", nullptr));
        pushButton_10->setText(QCoreApplication::translate("NumPadDialog", "CLR", nullptr));
        pushButton_2->setText(QCoreApplication::translate("NumPadDialog", "2", nullptr));
        pushButton_7->setText(QCoreApplication::translate("NumPadDialog", "7", nullptr));
        pushButton->setText(QCoreApplication::translate("NumPadDialog", "1", nullptr));
        pushButton_11->setText(QCoreApplication::translate("NumPadDialog", "0", nullptr));
        pushButton_3->setText(QCoreApplication::translate("NumPadDialog", "3", nullptr));
        pushButton_8->setText(QCoreApplication::translate("NumPadDialog", "8", nullptr));
        pushButton_6->setText(QCoreApplication::translate("NumPadDialog", "6", nullptr));
        pushButton_9->setText(QCoreApplication::translate("NumPadDialog", "9", nullptr));
        pushButton_4->setText(QCoreApplication::translate("NumPadDialog", "4", nullptr));
    } // retranslateUi

};

namespace Ui {
    class NumPadDialog: public Ui_NumPadDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NUMPADDIALOG_H
