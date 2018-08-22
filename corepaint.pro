#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = corepaint
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11
CONFIG += silent warn_on

# library for theme
unix:!macx: LIBS += /usr/lib/libcprime.a

FORMS += \
    corepaint.ui

HEADERS += \
    dialogs/resizedialog.h \
    dialogs/textdialog.h \
    instruments/abstractinstrument.h \
    instruments/abstractselection.h \
    instruments/colorpickerinstrument.h \
    instruments/curvelineinstrument.h \
    instruments/ellipseinstrument.h \
    instruments/eraserinstrument.h \
    instruments/fillinstrument.h \
    instruments/lineinstrument.h \
    instruments/pencilinstrument.h \
    instruments/rectangleinstrument.h \
    instruments/selectioninstrument.h \
    instruments/sprayinstrument.h \
    instruments/textinstrument.h \
    widgets/colorchooser.h \
    widgets/imagepreview.h \
    additionaltools.h \
    corepaint.h \
    datasingleton.h \
    easypaintenums.h \
    imagearea.h \
    undocommand.h

SOURCES += \
    dialogs/resizedialog.cpp \
    dialogs/textdialog.cpp \
    instruments/abstractinstrument.cpp \
    instruments/abstractselection.cpp \
    instruments/colorpickerinstrument.cpp \
    instruments/curvelineinstrument.cpp \
    instruments/ellipseinstrument.cpp \
    instruments/eraserinstrument.cpp \
    instruments/fillinstrument.cpp \
    instruments/lineinstrument.cpp \
    instruments/pencilinstrument.cpp \
    instruments/rectangleinstrument.cpp \
    instruments/selectioninstrument.cpp \
    instruments/sprayinstrument.cpp \
    instruments/textinstrument.cpp \
    widgets/colorchooser.cpp \
    widgets/imagepreview.cpp \
    additionaltools.cpp \
    corepaint.cpp \
    datasingleton.cpp \
    imagearea.cpp \
    main.cpp \
    undocommand.cpp

RESOURCES += \
    icons.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
