#include "cursordialog.h"
#include "ui_cursordialog.h"

CursorDialog::CursorDialog(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui_CursorDialog)
{
    ui->setupUi(this);
    connect(ui->cur1_check_box, &QCheckBox::toggled, this, &CursorDialog::on_cur1_check_box_toggled);
    connect(ui->cur2_check_box, &QCheckBox::toggled, this, &CursorDialog::on_cur2_check_box_toggled);
    connect(ui->cur1_radio_button, &QRadioButton::toggled, this, &CursorDialog::on_cur1_radio_button_toggled);
    connect(ui->cur2_radio_button, &QRadioButton::toggled, this, &CursorDialog::on_cur2_radio_button_toggled);
    connect(ui->cur_dial, &QDial::valueChanged, this, &CursorDialog::on_cur_dial_valueChanged);
    connect(ui->ok_button, &QPushButton::clicked, this, &CursorDialog::on_ok_button_clicked);
}

CursorDialog::~CursorDialog()
{
    delete ui;
}

void CursorDialog::on_cur1_check_box_toggled(bool checked)
{
    emit cursor1EnabledChanged(checked);
}

void CursorDialog::on_cur2_check_box_toggled(bool checked)
{
    emit cursor2EnabledChanged(checked);
}

void CursorDialog::on_cur1_radio_button_toggled(bool checked)
{
    if (checked) {
        selectedCursor = 1;
    }
}

void CursorDialog::on_cur2_radio_button_toggled(bool checked)
{
    if (checked) {
        selectedCursor = 2;
    }
}

void CursorDialog::on_cur_dial_valueChanged(int value)
{
    float position = value / 99.0f; // Assuming dial range 0-99
    if (selectedCursor == 1) {
        emit cursor1PositionChanged(position);
    } else {
        emit cursor2PositionChanged(position);
    }
}

void CursorDialog::on_ok_button_clicked()
{
    // Set the cursors and close
    accept();
}
