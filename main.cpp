#include "mainwindow.h"

#include <QApplication>
#include <QByteArray>

int main(int argc, char *argv[])
{
//    qputenv("QT_QPA_PLATFORM", QByteArray("linuxfb"));
//    qputenv("QT_QPA_FB", QByteArray("/dev/fb0"));

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
