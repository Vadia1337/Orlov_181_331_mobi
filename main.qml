import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12




ApplicationWindow {
    id:mainwindow
    signal signalMakeRequest();

    visible: true
    width: 480
    height: 640
    title: "Главное окно" // qsTr функция для переключения языка строки.
    color: "black" // Загараживает


    Connections{
    target:  httpController
    function onSignalSendToQML(pString){

    textaria.append(qString);
    }



    }


    SwipeView {  // расположенны страницы
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page{
            TextEdit {
                id: textEdit
                x: 200
                y: 567
                width: 80
                height: 20
                text: qsTr("Text Edit")
                font.pixelSize: 12
            }

            TextInput {
                id: textInput
                x: 13
                y: 83
                width: 454
                height: 390
                text: qsTr("Text Input")
                font.pixelSize: 12
            }






        }

        Page {
            Button{
                id: button1
                text: "Кнопка"
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 30
                font.italic: true
            }


            Button{
                id: button2
                text: "Кнопка2 анчорс"
                anchors.right: parent.right //с айди проблемы.
                anchors.left: button1.right
                anchors.margins: 20 // отступ
                height: 50
                anchors.top: button1.bottom// привязка к верху

            }

            Button{
                id: button3
                text: "Кнопка3"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 100
                height: 100

            }

        }

        Page {


            GridLayout{
                anchors.fill: parent
                columns: 3



            Button{
                id: button11
                text: "Кнопка"
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 30
                font.italic: true
            }


            Button{
                id: button22
                text: "Кнопка2 анчорс"
                height: 50


            }

            Button{
                id: button33
                text: "Кнопка3"
                width: 100
                height: 100

            }
            Button{
                id: button44
                text: "Кнопка3"
                width: 100
                height: 100

            }
            Button{
                id: button55
                text: "Кнопка3"
                width: 100 // не робит в лаяут
                height: 100 // не робит в лаяут
                //Ancors запрещены
                Layout.row: 2
                Layout.column: 2
                Layout.preferredHeight: 200
                Layout.preferredWidth: 200

                Layout.columnSpan: 2  //растянут на 2 колонки

                //Layout.fillHeight: true
                //Layout.fillWidth: true


            }



}

        }

        Page{
            id:pgLab1
            GridLayout{


            Button{
                id: buttonl4
                text: "GET"
                width: 100
                height: 100

            }

            Button{
                id: btn
                onCanceled: {
                    signalMakeRequest();

                }


                text: "GET"
                width: 100
                height: 100
                x: 100
                y: 100
            }


            TextArea {
                id: textaria
                x: 200
                y: 400
                width: 200
                height: 200
                text: qsTr("Text Edit")
                font.pixelSize: 12
                 }
                TextEdit {
                    id: text2
                    x: 200
                    y: 567
                    width: 80
                    height: 20
                    text: qsTr("Text Edit")
                    font.pixelSize: 12
                }




        }
}



        Page{
            id:pgLab5
            GridLayout{


            Button{
                id: buttonl5
                text: "GET"
                width: 100
                height: 100

            }

            Button{
                id: btn5
                onCanceled: {

                }


                text: "GET"
                width: 100
                height: 100
                x: 100
                y: 100
            }


            TextArea {
                id: textaria5
                x: 200
                y: 400
                width: 200
                height: 200
                text: qsTr("Text Edit")
                font.pixelSize: 12
                 }
                TextEdit {
                    id: text25
                    x: 200
                    y: 567
                    width: 80
                    height: 20
                    text: qsTr("Text Edit")
                    font.pixelSize: 12
                }




        }
}

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("LB1")

        }
        TabButton {
            text: qsTr("Page 2")
        }

        TabButton {
            text: qsTr("Page 3")
        }
        TabButton {
            text: qsTr("LB4")
        }
        TabButton {
            text: qsTr("LB5")
        }
    }
}
