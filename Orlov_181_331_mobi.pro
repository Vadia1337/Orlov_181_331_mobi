#Список подкл. разделов библиотеки QT (Работа с сетью и с др.)
QT += quick
#Настройки компиляции
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
#Обьявление переменных и флагов окружения
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Раздел файлов исходного кода на С++
SOURCES += \
       main.cpp


#Раздел файлов заголовков С++
#HEADERS

#Список файлов включаеммых в раздел ресурсов получаемого исполняемого модуля (видосы фото и др файлы включаются тут)
RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
#Синтаксис Название платформы: Послежующие команды сборки будут работать только на обозначенной платформе
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
