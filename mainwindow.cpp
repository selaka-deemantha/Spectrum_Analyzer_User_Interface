#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "numpaddialog.h"

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    //connect buttons to numpaddialog
    connect(ui->SpanBtn,&QPushButton::clicked,this, &MainWindow::onSpanButtonPressed);
    connect(ui->CenterFreqBtn, &QPushButton::clicked,this, &MainWindow::onCenterFreqButtonPressed);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::onSpanButtonPressed(){
    NumPadDialog dlg(this);
    dlg.setTitle("Set Span");
    dlg.showFullScreen();
    double span;

    if (dlg.exec() == QDialog::Accepted) {
        span = dlg.value();
        // store span, update spectrum scaling later
        qDebug() << "Span set to:" << span;
    }

    ui->span_label->setText(QString("%1 MHz").arg(span, 0, 'f', 3));
    ui->rbw_label->setText(QString("%1 MHz").arg(span / 1e6, 0, 'f', 3));
    ui->swt_label->setText(QString("%1 MHz").arg(span / 1e6, 0, 'f', 3));

}

void MainWindow::onCenterFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Center Frequency");
    double freq;

    if (dlg.exec() == QDialog::Accepted) {
        freq = dlg.value();
        // store center frequency
        qDebug() << "Center Frequency set to:" << freq;
    }
    ui->center_freq_label->setText(QString("%1 MHz").arg(freq, 0, 'f', 3));
}
