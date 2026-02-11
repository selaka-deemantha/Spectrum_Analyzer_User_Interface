#include "numpaddialog.h"
#include "ui_numpaddialog.h"

#include <QPushButton>


NumPadDialog::NumPadDialog(QWidget *parent):
    QDialog(parent),
    ui(new Ui::NumPadDialog)

{
    //connect this class to numpaddialog.ui
    ui->setupUi(this);

    setAttribute(Qt::WA_StyledBackground, true);
    setStyleSheet("background-color: #111111;");
    //make the dialog full screen and modal
    setWindowFlags(Qt::FramelessWindowHint);
    setModal(true);
    if (parent) {
        resize(parent->size());
        move(0, 0);
    }

    ui->displayEdit->setReadOnly(true);
    ui->displayEdit->setAlignment(Qt::AlignRight);
    ui->displayEdit->setStyleSheet(
         "background-color: black;"
         "color: green;"
         "font-size: 28pt;"
     );

    // Connect all buttons to one slot (fast & efficient)
    const auto buttons = findChildren<QPushButton*>();
    for (QPushButton *b : buttons) {
        b->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        b->setMinimumSize(80, 80);
        b->setStyleSheet(
            "background-color: #333333;"
            "color: white;"
            "font-size: 20pt;"
        );

        connect(b, &QPushButton::clicked,
                this, &NumPadDialog::handleButton);
    }

}


NumPadDialog::~NumPadDialog()
{
    delete ui;
}

void NumPadDialog::setTitle(const QString &text)
{
    setWindowTitle(text);
}

void NumPadDialog::handleButton()
{
    QPushButton *btn = qobject_cast<QPushButton*>(sender());
    if (!btn)
        return;

    const QString t = btn->text();

    if (t == "CLR") {
        input.clear();
    }
    else if (t == "ENT") {
        accept();   // close dialog with Accepted
        return;
    }
    else {
        input += t; // append digit
    }

    ui->displayEdit->setText(input);
}

double NumPadDialog::value() const
{
    return input.toDouble();
}
