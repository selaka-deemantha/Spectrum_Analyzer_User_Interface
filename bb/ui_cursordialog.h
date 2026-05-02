/********************************************************************************
** Form generated from reading UI file 'cursordialog.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CURSORDIALOG_H
#define UI_CURSORDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDial>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Form
{
public:
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QCheckBox *v_cur_1_checkbox;
    QLabel *label;
    QLabel *label_2;
    QCheckBox *v_cur_2_checkbox;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout_2;
    QCheckBox *h_cur_1_checkbox;
    QLabel *label_3;
    QLabel *label_4;
    QCheckBox *h_cur_2_checkbox;
    QDial *dial;
    QPushButton *cur_ok_button;
    QPushButton *cur_clear_button;
    QWidget *gridLayoutWidget_3;
    QGridLayout *gridLayout_3;
    QLabel *label_7;
    QLabel *label_9;
    QLabel *v_cur_2_pos;
    QLabel *v_cur_1_pos;
    QLabel *h_cur_1_pos;
    QLabel *label_5;
    QLabel *label_11;
    QLabel *h_cur_2_pos;

    void setupUi(QWidget *Form)
    {
        if (Form->objectName().isEmpty())
            Form->setObjectName(QString::fromUtf8("Form"));
        Form->resize(295, 791);
        gridLayoutWidget = new QWidget(Form);
        gridLayoutWidget->setObjectName(QString::fromUtf8("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(30, 30, 221, 80));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        v_cur_1_checkbox = new QCheckBox(gridLayoutWidget);
        v_cur_1_checkbox->setObjectName(QString::fromUtf8("v_cur_1_checkbox"));

        gridLayout->addWidget(v_cur_1_checkbox, 0, 1, 1, 1);

        label = new QLabel(gridLayoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        label_2 = new QLabel(gridLayoutWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        v_cur_2_checkbox = new QCheckBox(gridLayoutWidget);
        v_cur_2_checkbox->setObjectName(QString::fromUtf8("v_cur_2_checkbox"));

        gridLayout->addWidget(v_cur_2_checkbox, 1, 1, 1, 1);

        gridLayoutWidget_2 = new QWidget(Form);
        gridLayoutWidget_2->setObjectName(QString::fromUtf8("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(30, 130, 221, 80));
        gridLayout_2 = new QGridLayout(gridLayoutWidget_2);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        h_cur_1_checkbox = new QCheckBox(gridLayoutWidget_2);
        h_cur_1_checkbox->setObjectName(QString::fromUtf8("h_cur_1_checkbox"));

        gridLayout_2->addWidget(h_cur_1_checkbox, 0, 1, 1, 1);

        label_3 = new QLabel(gridLayoutWidget_2);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_2->addWidget(label_3, 0, 0, 1, 1);

        label_4 = new QLabel(gridLayoutWidget_2);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout_2->addWidget(label_4, 1, 0, 1, 1);

        h_cur_2_checkbox = new QCheckBox(gridLayoutWidget_2);
        h_cur_2_checkbox->setObjectName(QString::fromUtf8("h_cur_2_checkbox"));

        gridLayout_2->addWidget(h_cur_2_checkbox, 1, 1, 1, 1);

        dial = new QDial(Form);
        dial->setObjectName(QString::fromUtf8("dial"));
        dial->setGeometry(QRect(70, 220, 151, 151));
        cur_ok_button = new QPushButton(Form);
        cur_ok_button->setObjectName(QString::fromUtf8("cur_ok_button"));
        cur_ok_button->setGeometry(QRect(40, 620, 89, 25));
        cur_clear_button = new QPushButton(Form);
        cur_clear_button->setObjectName(QString::fromUtf8("cur_clear_button"));
        cur_clear_button->setGeometry(QRect(170, 620, 89, 25));
        gridLayoutWidget_3 = new QWidget(Form);
        gridLayoutWidget_3->setObjectName(QString::fromUtf8("gridLayoutWidget_3"));
        gridLayoutWidget_3->setGeometry(QRect(20, 400, 261, 181));
        gridLayout_3 = new QGridLayout(gridLayoutWidget_3);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        gridLayout_3->setContentsMargins(0, 0, 0, 0);
        label_7 = new QLabel(gridLayoutWidget_3);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout_3->addWidget(label_7, 2, 0, 1, 1);

        label_9 = new QLabel(gridLayoutWidget_3);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout_3->addWidget(label_9, 3, 0, 1, 1);

        v_cur_2_pos = new QLabel(gridLayoutWidget_3);
        v_cur_2_pos->setObjectName(QString::fromUtf8("v_cur_2_pos"));

        gridLayout_3->addWidget(v_cur_2_pos, 2, 1, 1, 1);

        v_cur_1_pos = new QLabel(gridLayoutWidget_3);
        v_cur_1_pos->setObjectName(QString::fromUtf8("v_cur_1_pos"));

        gridLayout_3->addWidget(v_cur_1_pos, 1, 1, 1, 1);

        h_cur_1_pos = new QLabel(gridLayoutWidget_3);
        h_cur_1_pos->setObjectName(QString::fromUtf8("h_cur_1_pos"));

        gridLayout_3->addWidget(h_cur_1_pos, 3, 1, 1, 1);

        label_5 = new QLabel(gridLayoutWidget_3);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout_3->addWidget(label_5, 1, 0, 1, 1);

        label_11 = new QLabel(gridLayoutWidget_3);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        gridLayout_3->addWidget(label_11, 4, 0, 1, 1);

        h_cur_2_pos = new QLabel(gridLayoutWidget_3);
        h_cur_2_pos->setObjectName(QString::fromUtf8("h_cur_2_pos"));

        gridLayout_3->addWidget(h_cur_2_pos, 4, 1, 1, 1);


        retranslateUi(Form);

        QMetaObject::connectSlotsByName(Form);
    } // setupUi

    void retranslateUi(QWidget *Form)
    {
        Form->setWindowTitle(QApplication::translate("Form", "Form", nullptr));
        v_cur_1_checkbox->setText(QApplication::translate("Form", "CheckBox", nullptr));
        label->setText(QApplication::translate("Form", "V_Cursor_1", nullptr));
        label_2->setText(QApplication::translate("Form", "V_Cursor_2", nullptr));
        v_cur_2_checkbox->setText(QApplication::translate("Form", "CheckBox", nullptr));
        h_cur_1_checkbox->setText(QApplication::translate("Form", "CheckBox", nullptr));
        label_3->setText(QApplication::translate("Form", "H_Cursor_1", nullptr));
        label_4->setText(QApplication::translate("Form", "H_Cursor_2", nullptr));
        h_cur_2_checkbox->setText(QApplication::translate("Form", "CheckBox", nullptr));
        cur_ok_button->setText(QApplication::translate("Form", "OK", nullptr));
        cur_clear_button->setText(QApplication::translate("Form", "Clear", nullptr));
        label_7->setText(QApplication::translate("Form", "V_Cursor_2_Pos", nullptr));
        label_9->setText(QApplication::translate("Form", "H_Cursor_1_Pos", nullptr));
        v_cur_2_pos->setText(QApplication::translate("Form", "TextLabel", nullptr));
        v_cur_1_pos->setText(QApplication::translate("Form", "TextLabel", nullptr));
        h_cur_1_pos->setText(QApplication::translate("Form", "TextLabel", nullptr));
        label_5->setText(QApplication::translate("Form", "V_Cursor_1_Pos", nullptr));
        label_11->setText(QApplication::translate("Form", "H_Cursor_1_Pos", nullptr));
        h_cur_2_pos->setText(QApplication::translate("Form", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Form: public Ui_Form {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CURSORDIALOG_H
