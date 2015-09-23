#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QtQml>
#include "pet.h"



int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<Pet>("org.joware.neogotchi", 1, 0, "Pet");
    Pet pet;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

