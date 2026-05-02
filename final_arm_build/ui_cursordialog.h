/********************************************************************************
** Form generated from reading UI file 'cursordialog.ui'
**
** Created by: Qt User Interface Compiler version 5.15.13
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CURSORDIALOG_H
#define UI_CURSORDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDial>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CursorDialog
{
public:
    QDial *cur_dial;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QCheckBox *cur1_check_box;
    QLabel *label;
    QLabel *label_2;
    QCheckBox *cur2_check_box;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout_2;
    QRadioButton *cur1_radio_button;
    QLabel *label_3;
    QLabel *label_4;
    QRadioButton *cur2_radio_button;
    QPushButton *ok_button;

    void setupUi(QDialog *Dialog)
    {
        if (Dialog->objectName().isEmpty())
            Dialog->setObjectName(QString::fromUtf8("Dialog"));
        Dialog->resize(400, 300);
        cur_dial = new QDial(Dialog);
        cur_dial->setObjectName(QString::fromUtf8("cur_dial"));
        cur_dial->setGeometry(QRect(230, 10, 131, 101));
        gridLayoutWidget = new QWidget(Dialog);
        gridLayoutWidget->setObjectName(QString::fromUtf8("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(10, 20, 160, 80));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        cur1_check_box = new QCheckBox(gridLayoutWidget);
        cur1_check_box->setObjectName(QString::fromUtf8("cur1_check_box"));

        gridLayout->addWidget(cur1_check_box, 0, 1, 1, 1);

        label = new QLabel(gridLayoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        label_2 = new QLabel(gridLayoutWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        cur2_check_box = new QCheckBox(gridLayoutWidget);
        cur2_check_box->setObjectName(QString::fromUtf8("cur2_check_box"));

        gridLayout->addWidget(cur2_check_box, 1, 1, 1, 1);

        gridLayoutWidget_2 = new QWidget(Dialog);
        gridLayoutWidget_2->setObjectName(QString::fromUtf8("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(10, 120, 160, 80));
        gridLayout_2 = new QGridLayout(gridLayoutWidget_2);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        cur1_radio_button = new QRadioButton(gridLayoutWidget_2);
        cur1_radio_button->setObjectName(QString::fromUtf8("cur1_radio_button"));

        gridLayout_2->addWidget(cur1_radio_button, 0, 1, 1, 1);

        label_3 = new QLabel(gridLayoutWidget_2);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_2->addWidget(label_3, 0, 0, 1, 1);

        label_4 = new QLabel(gridLayoutWidget_2);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout_2->addWidget(label_4, 1, 0, 1, 1);

        cur2_radio_button = new QRadioButton(gridLayoutWidget_2);
        cur2_radio_button->setObjectName(QString::fromUtf8("cur2_radio_button"));

        gridLayout_2->addWidget(cur2_radio_button, 1, 1, 1, 1);

        ok_button = new QPushButton(Dialog);
        ok_button->setObjectName(QString::fromUtf8("ok_button"));
        ok_button->setGeometry(QRect(150, 250, 100, 30));

        retranslateUi(Dialog);

        QMetaObject::connectSlotsByName(Dialog);
    } // setupUi

    void retranslateUi(QDialog *Dialog)
    {
        Dialog->setWindowTitle(QCoreApplication::translate("CursorDialog", "Dialog", nullptr));
        cur1_check_box->setText(QString());
        label->setText(QCoreApplication::translate("CursorDialog", "Cursor 1", nullptr));
        label_2->setText(QCoreApplication::translate("CursorDialog", "Cursor 2", nullptr));
        cur2_check_box->setText(QString());
        cur1_radio_button->setText(QString());
        label_3->setText(QCoreApplication::translate("CursorDialog", "Select Cursor 1", nullptr));
        label_4->setText(QCoreApplication::translate("CursorDialog", "Select Cursor 2", nullptr));
        cur2_radio_button->setText(QString());
        ok_button->setText(QCoreApplication::translate("CursorDialog", "OK", nullptr));
    } // retranslateUi

};

namespace Ui {
    class CursorDialog: public Ui_CursorDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CURSORDIALOG_H
