QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    connection.cpp \
    main.cpp \
    mainwidget.cpp \
    upload.cpp

HEADERS += \
    QSsh/sftpchannel.h \
    QSsh/sftpdefs.h \
    QSsh/sftpfilesystemmodel.h \
    QSsh/ssh_global.h \
    QSsh/sshconnection.h \
    QSsh/sshconnectionmanager.h \
    QSsh/sshdirecttcpiptunnel.h \
    QSsh/ssherrors.h \
    QSsh/sshhostkeydatabase.h \
    QSsh/sshkeycreationdialog.h \
    QSsh/sshkeygenerator.h \
    QSsh/sshpseudoterminal.h \
    QSsh/sshremoteprocess.h \
    QSsh/sshremoteprocessrunner.h \
    connection.h \
    mainwidget.h \
    upload.h
FORMS += \
    mainwidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    QSsh/libQSsh_debug.1.dylib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/QSsh/release/ -lQSsh_debug.1
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/QSsh/debug/ -lQSsh_debug.1
else:unix: LIBS += -L$$PWD/QSsh/ -lQSsh_debug.1

INCLUDEPATH += $$PWD/QSsh
DEPENDPATH += $$PWD/QSsh
