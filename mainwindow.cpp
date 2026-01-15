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

    if (dlg.exec() == QDialog::Accepted) {
        double span = dlg.value();
        // store span, update spectrum scaling later
        qDebug() << "Span set to:" << span;
    }
}

void MainWindow::onCenterFreqButtonPressed()
{
    NumPadDialog dlg(this);
    dlg.setTitle("Set Center Frequency");

    if (dlg.exec() == QDialog::Accepted) {
        double freq = dlg.value();
        // store center frequency
        qDebug() << "Center Frequency set to:" << freq;
    }
}
