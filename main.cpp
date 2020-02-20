#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    //Базовый класс который отвечает за поддержду разных плюх
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    //вызов независимой функции в составе класса QCore (Настройка маштабирования экрана)
    //Без создания экземпляра класса обьекта


//Класс добавляет графические интерфейсы (работа с графикой)
    QGuiApplication app(argc, argv);//приложение с граф. областью Создается базовое приложение

    QQmlApplicationEngine engine;// Создание браузерного движка (QML Движок может ХРОМИУМ)

    const QUrl url(QStringLiteral("qrc:/main.qml"));//преобразование пути из Char в  QURL (откуда брать старт стр. для движка)
    //QURL можно давать параметры ?212.. и тд



    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,//Подключение слота, срабатывающего по сигналу ObjectCreatetd


  &app, [url](QObject *obj, const QUrl &objUrl) //Заголовок Лямбда-выражения

    {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);//Лямбда-выражение (Тело)
    }, Qt::QueuedConnection);



    engine.load(url); // загрузка старт. страницы с адресом URL

    return app.exec(); //запуск бесконечного цикла обработки сообщений и слотов сигналов
}
