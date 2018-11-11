QT       += core gui widgets
TARGET    = corepaint
TEMPLATE  = app

# Disable warnings, enable threading support and c++11
CONFIG   += thread silent build_all c++11

# Disable Debug on Release
# CONFIG(release):DEFINES += QT_NO_DEBUG_OUTPUT

# Build location
#BUILD_PREFIX = $$(CA_BUILD_DIR)

# library for theme
unix:!macx: LIBS += -lcprime

# Definetion section

DEFINES += QT_DEPRECATED_WARNINGS
####################

isEmpty( BUILD_PREFIX ) {
        BUILD_PREFIX = ./build
}

MOC_DIR       = $$BUILD_PREFIX/moc-qt5
OBJECTS_DIR   = $$BUILD_PREFIX/obj-qt5
RCC_DIR	      = $$BUILD_PREFIX/qrc-qt5
UI_DIR        = $$BUILD_PREFIX/uic-qt5

unix {
        isEmpty(PREFIX) {
                PREFIX = /usr
        }
        BINDIR = $$PREFIX/bin

        target.path = $$BINDIR

        desktop.path = $$PREFIX/share/applications/
        desktop.files = "corepaint.desktop"

        icons.path = $$PREFIX/share/coreapps/icons/
        icons.files = icons/corepaint.svg

        INSTALLS += target icons desktop
}

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

FORMS += \
    corepaint.ui

RESOURCES += \
    icons.qrc
