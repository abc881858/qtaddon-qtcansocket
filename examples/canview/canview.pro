TEMPLATE = app
TARGET = canview
QT += core \
    gui
HEADERS += connectdlg.h \
    cansendscheduler.h \
    canmessagedlg.h \
    canmessagemodel.h \
    ../../src/cansocket/qcanmessage.h \
    ../../src/cansocket/qcansocket_p.h \
    ../../src/cansocket/qcansocket.h \
    mainwin.h
SOURCES += connectdlg.cpp \
    cansendscheduler.cpp \
    canmessagedlg.cpp \
    canmessagemodel.cpp \
    ../../src/cansocket/qcansocket.cpp \
    main.cpp \
    mainwin.cpp
FORMS += connectdlg.ui \
    canmessagedlg.ui \
    mainwin.ui
RESOURCES += 
RESOURCES = canview.qrc
INCLUDEPATH += ../../src/cansocket
OBJECTS_DIR = ../../obj
DESTDIR = ../../bin
MOC_DIR = ../../moc
unix { 
    target.path = /usr/local/bin
    INSTALLS += target
}
GITHASH = $$system(git log -1 --pretty=format:"%h")
DEFINES += GITHASH=$$GITHASH
