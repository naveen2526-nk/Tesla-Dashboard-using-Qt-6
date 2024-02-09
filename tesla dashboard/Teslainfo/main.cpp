#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <controllers/system.h>
#include <controllers/hvachandler.h>
#include <controllers/audiocontroller.h>
#include <controllers/carsettings/carsettings.h>
#include <controllers/ftopen.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;
    qRegisterMetaType<System>("System*");
    System systemObject;
    engine.rootContext()->setContextProperty("system", &systemObject);
    HVACHandler m_driverHVACHandler;
    engine.rootContext()->setContextProperty("driverHVAC", &m_driverHVACHandler);
    HVACHandler m_passengerHVACHandler;
    engine.rootContext()->setContextProperty("passengerHVAC", &m_passengerHVACHandler);
    AudioController m_audioController;
    engine.rootContext()->setContextProperty("audioController", &m_audioController);
    CarSettings m_carSettingsPopup;
    engine.rootContext()->setContextProperty("carSetts", &m_carSettingsPopup);
    FTOpen m_FTopen;
    engine.rootContext()->setContextProperty("ftopen",&m_FTopen);
    FTOpen m_FTopen2;
    engine.rootContext()->setContextProperty("ftopen2",&m_FTopen2);
    const QUrl url(u"qrc:/Teslainfo/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);



    return app.exec();
}
