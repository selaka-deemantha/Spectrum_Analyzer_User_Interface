#include "cursordialog.h"
#include "ui_cursordialog.h"

#include <QCheckBox>
#include <QPushButton>
#include <QList>

CursorDialog::CursorDialog(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Form)
{
    ui->setupUi(this);

    // Fix transparent background
    setAutoFillBackground(true);

    // Dial range
    ui->dial->setRange(0, 1000);

    // -------- V Cursor 1 --------
    connect(ui->v_cur_1_checkbox, &QCheckBox::toggled, this,
            [=](bool checked){
        if (checked) {
            resetAllExcept(ui->v_cur_1_checkbox);
            activeCursor = V1;

            emit vCursor1Enabled(true);   // ENABLE only here
        } else {
            if (activeCursor == V1)
                activeCursor = None;  // just deselect, DO NOT disable
        }
    });

    // -------- V Cursor 2 --------
    connect(ui->v_cur_2_checkbox, &QCheckBox::toggled, this,
            [=](bool checked){
        if (checked) {
            resetAllExcept(ui->v_cur_2_checkbox);
            activeCursor = V2;

            emit vCursor2Enabled(true);
        } else {
            if (activeCursor == V2)
                activeCursor = None;
        }
    });

    // -------- H Cursor 1 --------
    connect(ui->h_cur_1_checkbox, &QCheckBox::toggled, this,
            [=](bool checked){
        if (checked) {
            resetAllExcept(ui->h_cur_1_checkbox);
            activeCursor = H1;

            emit hCursor1Enabled(true);
        } else {
            if (activeCursor == H1)
                activeCursor = None;
        }
    });

    // -------- H Cursor 2 --------
    connect(ui->h_cur_2_checkbox, &QCheckBox::toggled, this,
            [=](bool checked){
        if (checked) {
            resetAllExcept(ui->h_cur_2_checkbox);
            activeCursor = H2;

            emit hCursor2Enabled(true);
        } else {
            if (activeCursor == H2)
                activeCursor = None;
        }
    });

    // -------- Dial Control --------
    connect(ui->dial, &QDial::valueChanged, this,
            [=](int val){

        float v = static_cast<float>(val);

        switch (activeCursor)
        {
        case H1: emit hCursor1Moved(v); break;
        case H2: emit hCursor2Moved(v); break;
        case V1: emit vCursor1Moved(v); break;
        case V2: emit vCursor2Moved(v); break;
        default: break;
        }
    });

    // -------- OK Button --------
    connect(ui->cur_ok_button, &QPushButton::clicked,
            this, &QWidget::hide);

    // -------- CLEAR Button --------
    connect(ui->cur_clear_button, &QPushButton::clicked, this, [=](){

        // Uncheck all (UI only)
        ui->v_cur_1_checkbox->setChecked(false);
        ui->v_cur_2_checkbox->setChecked(false);
        ui->h_cur_1_checkbox->setChecked(false);
        ui->h_cur_2_checkbox->setChecked(false);

        activeCursor = None;

        // ONLY place where cursors are disabled
        emit hCursor1Enabled(false);
        emit hCursor2Enabled(false);
        emit vCursor1Enabled(false);
        emit vCursor2Enabled(false);

        emit clearCursors();
    });
}

CursorDialog::~CursorDialog()
{
    delete ui;
}

// -------- Helper --------
void CursorDialog::resetAllExcept(QCheckBox* selected)
{
    QList<QCheckBox*> boxes = {
        ui->v_cur_1_checkbox,
        ui->v_cur_2_checkbox,
        ui->h_cur_1_checkbox,
        ui->h_cur_2_checkbox
    };

    for (auto box : boxes)
    {
        if (box != selected)
            box->setChecked(false);
    }
}


void CursorDialog::setH1Pos(float v)
{
    ui->h_cur_1_pos->setText(QString::number(v, 'f', 2));
}

void CursorDialog::setH2Pos(float v)
{
    ui->h_cur_2_pos->setText(QString::number(v, 'f', 2));
}

void CursorDialog::setV1Pos(float v)
{
    ui->v_cur_1_pos->setText(QString::number(v, 'f', 2));
}

void CursorDialog::setV2Pos(float v)
{
    ui->v_cur_2_pos->setText(QString::number(v, 'f', 2));
}


void CursorDialog::clearLabels()
{
    ui->h_cur_1_pos->clear();
    ui->h_cur_2_pos->clear();
    ui->v_cur_1_pos->clear();
    ui->v_cur_2_pos->clear();
}





void CursorDialog::updateV1(float v)
{
    ui->v_cur_1_pos->setText(QString("%1 MHz").arg(v, 0, 'f', 2));
}

void CursorDialog::updateV2(float v)
{
    ui->v_cur_2_pos->setText(QString("%1 MHz").arg(v, 0, 'f', 2));
}

void CursorDialog::updateH1(float v)
{
    ui->h_cur_1_pos->setText(QString("%1 dB").arg(v, 0, 'f', 2));
}

void CursorDialog::updateH2(float v)
{
    ui->h_cur_2_pos->setText(QString("%1 dB").arg(v, 0, 'f', 2));
}
