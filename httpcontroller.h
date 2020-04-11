#ifndef QHTTPCONTROLLER_H
#define QHTTPCONTROLLER_H

#include <QObject>
#include <QNetworkAccessManager>

class httpcontroller : public QObject
{
    Q_OBJECT
public:
    explicit httpcontroller(QObject *parent = nullptr);
    QNetworkAccessManager * nam;
    void GetSiteValue();

signals:
    void signalSendToQML(QString pReply);

public slots:
   // void SlotFinished(QNetworkReply *reply);
};

#endif // QHTTPCONTROLLER_H
