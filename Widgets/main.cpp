#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include "qtquick2applicationviewer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl("./qml/Widgets/main.qml"));
    return app.exec();
}
