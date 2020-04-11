#include "httpcontroller.h"
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QDebug>
#include <QEventLoop>

httpcontroller::httpcontroller(QObject *parent) : QObject(parent)
{

   nam = new QNetworkAccessManager;
  //  connect(nam, &QNetworkAccessManager::finished,
    //        this, &httpcontroller::SlotFinished );

}

//void httpcontroller::SlotFinished(QNetworkReply * reply){

//    qDebug() << "Слот финиш";
//    qDebug() << reply->url()
 //            << reply->rawHeaderList()
 //            << reply->readAll();

//}

void httpcontroller::GetSiteValue()
{

    QNetworkRequest request;


    request.setUrl(QUrl("http://club-nissan.ru/forums"));
    qDebug() << request.rawHeaderList() << request.url();
    QNetworkReply * reply;

    QEventLoop evLoop;
    connect(nam, &QNetworkAccessManager::finished, &evLoop, &QEventLoop::quit);

   reply = nam->get(request);
   evLoop.exec();//запуск цикла ожидания идет обработка остальных запросов
QByteArray replyString = reply->readAll();



   emit signalSendToQML(QString(replyString));


           qDebug() << "В нетворке";
   qDebug()<< reply->url() << reply->rawHeaderList() << reply->readAll();
}

getAuth(){

}
