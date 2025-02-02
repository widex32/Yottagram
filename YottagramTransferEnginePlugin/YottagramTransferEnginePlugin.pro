TEMPLATE = lib

TARGET = $$qtLibraryTarget(YottagramTransferEnginePlugin)
CONFIG += plugin
DEPENDPATH += .

CONFIG += link_pkgconfig
PKGCONFIG += nemotransferengine-qt5

CONFIG += c++11

HEADERS += \
    $$PWD/YottagramTransferPluginInfo.h \
    $$PWD/YottagramMediaTransfer.h \
    $$PWD/YottagramTransferPlugin.h

SOURCES += \
    $$PWD/YottagramTransferPluginInfo.cpp \
    $$PWD/YottagramMediaTransfer.cpp \
    $$PWD/YottagramTransferPlugin.cpp

DISTFILES += \
    $$PWD/YottagramShare.qml

qml.files = YottagramShare.qml
qml.path = /usr/share/nemo-transferengine/plugins

INSTALLS += qml

target.path = $$[QT_INSTALL_LIBS]/nemo-transferengine/plugins
INSTALLS += target

