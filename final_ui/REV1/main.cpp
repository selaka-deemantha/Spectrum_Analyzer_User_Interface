#include "mainwindow.h"

#include <QApplication>
#include <QByteArray>
#include <QFontDatabase>
#include <QFont>

#include "appConfig.h"

int main(int argc, char *argv[])
{
#if TEST_MODE

#else
    qputenv("QT_QPA_PLATFORM", QByteArray("linuxfb"));
    qputenv("QT_QPA_FB", QByteArray("/dev/fb0"));
#endif

    QApplication a(argc, argv);

    int fontId = QFontDatabase::addApplicationFont(":/DejaVuSans.ttf");

    if (fontId != -1) {
        QString family = QFontDatabase::applicationFontFamilies(fontId).at(0);
        QFont customFont(family, 12); // Set a reasonable size
        a.setFont(customFont);
//        qDebug() << "Successfully loaded font:" << family;
    } else {
//        qDebug() << "Error: Could not load embedded font from resources!";
    }

    MainWindow w;
//    w.show();
    w.showFullScreen();
    return a.exec();
}

