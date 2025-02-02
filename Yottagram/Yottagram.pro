include(vendor/vendor.pri)

TARGET = yottagram

QT += dbus multimedia location

CONFIG += c++2a link_pkgconfig sailfishapp iostream

QMAKE_CXXFLAGS += -std=c++2a
QMAKE_CXXFLAGS_DEBUG -= -O1
QMAKE_CXXFLAGS_DEBUG -= -O2
QMAKE_CXXFLAGS_DEBUG *= -O0 -Wno-unused-parameter

INCLUDEPATH += /usr/include/glib-2.0 $$PWD/src

PKGCONFIG += zlib openssl nemonotifications-qt5 connman-qt5 vorbisfile systemsettings libavcodec libavformat libavutil opus libjpeg libpng libswresample libswscale protobuf gio-2.0 alsa glib-2.0 libpulse libpulse-mainloop-glib

DEFINES += QT_STATICPLUGIN

CONFIG -= debug_and_release
CONFIG(debug, debug|release): {
    message(Building for debug)
}
CONFIG(release, debug|release): {
    message(Building for release)
    DEFINES *= QT_NO_DEBUG_OUTPUT
}

SOURCES += src/core.cpp \
    src/calls.cpp \
    src/chatlistfilters.cpp \
    src/components/audiorecorder.cpp \
    src/components/autodownloadsettings.cpp \
    src/components/basicgroupfullinfo.cpp \
    src/components/basicgroupinfo.cpp \
    src/components/basicgroupsinfo.cpp \
    src/components/pinnedmessages.cpp \
    src/components/scopenotificationsettings.cpp \
    src/components/secretchatinfo.cpp \
    src/components/secretchatsinfo.cpp \
    src/components/supergroupfullinfo.cpp \
    src/components/supergroupinfo.cpp \
    src/components/supergroupsinfo.cpp \
    src/components/thumbnail.cpp \
    src/components/userfullinfo.cpp \
    src/contents/call.cpp \
    src/contents/contact.cpp \
    src/contents/location.cpp \
    src/contents/poll.cpp \
    src/contents/animation.cpp \
    src/contents/audio.cpp \
    src/contents/document.cpp \
    src/contents/photo.cpp \
    src/contents/sticker.cpp \
    src/contents/video.cpp \
    src/contents/videonote.cpp \
    src/contents/voicenote.cpp \
    src/contents/animatedemoji.cpp \
    src/dbushelper.cpp \
    src/files/contentfile.cpp \
    src/files/file.cpp \
    src/files/files.cpp \
    src/message.cpp \
    src/notifications.cpp \
    src/proxymodel.cpp \
    src/pulseaudiohelper.cpp \
    src/savedanimations.cpp \
    src/stickerset.cpp \
    src/stickersets.cpp \
    src/tgsioplugin/tgsioplugin.cpp \
    src/tgsioplugin/tgsiohandler.cpp \
    src/user.cpp \
    src/users.cpp \
    src/webpage.cpp \
    src/yottagram.cpp \
    src/authorization.cpp \
    src/core/telegramreceiver.cpp \
    src/core/telegrammanager.cpp \
    src/chatlist.cpp \
    src/chat.cpp

DISTFILES += qml/yottagram.qml \
    com.verdanditeam.yottagram.calls.xml \
    com.verdanditeam.yottagram.service \
    qml/components/AnimationPicker.qml \
    qml/components/AnimationPreview.qml \
    qml/components/AutoDownloadSettings.qml \
    qml/components/CallSettings.qml \
    qml/components/ChatNotifications.qml \
    qml/components/Property.qml \
    qml/components/LocationPicker.qml \
    qml/components/PinnedMessage.qml \
    qml/components/ScopeNotificationSettings.qml \
    qml/components/SilicaSignalListView.qml \
    qml/components/StickerPicker.qml \
    qml/components/SubpageElement.qml \
    qml/components/SwitchButton.qml \
    qml/components/chatInfo/BasicGroupInfo.qml \
    qml/components/chatInfo/SupergroupInfo.qml \
    qml/components/chatInfo/UserInfo.qml \
    qml/components/functions/chatFolderIconHelper.js \
    qml/components/functions/muteFormat.js \
    qml/components/functions/foramtDuration.js \
    qml/components/functions/twemoji.js \
    qml/components/messageContent/AnimatedEmojiContent.qml \
    qml/components/messageContent/AnimatedStickerContent.qml \
    qml/components/messageContent/AnimationContent.qml \
    qml/components/messageContent/AudioContent.qml \
    qml/components/messageContent/ContactContent.qml \
    qml/components/messageContent/DocumentContent.qml \
    qml/components/messageContent/ImageContent.qml \
    qml/components/messageContent/LocationContent.qml \
    qml/components/messageContent/Poll.qml \
    qml/components/messageContent/StickerContent.qml \
    qml/components/messageContent/VideoContent.qml \
    qml/components/messageContent/VideoNoteContent.qml \
    qml/components/messageContent/VoiceNoteContent.qml \
    qml/components/Avatar.qml \
    qml/components/HighlightLabelIconButton.qml \
    qml/components/LabelWithMenu.qml \
    qml/components/MessageBubble.qml \
    qml/components/MessageContextMenu.qml \
    qml/components/TextSwitchWithMenu.qml \
    qml/components/WebPage.qml \
    qml/components/webPageContent/AnimationContent.qml \
    qml/components/webPageContent/AudioContent.qml \
    qml/components/webPageContent/DocumentContent.qml \
    qml/components/webPageContent/ImageContent.qml \
    qml/components/webPageContent/VideoContent.qml \
    qml/components/private/BoundsBehavior.qml \
    qml/components/private/FastScrollAnimation.js \
    qml/components/private/FastScrollAnimation.qml \
    qml/components/private/QuickScroll.qml \
    qml/components/private/QuickScrollArea.qml \
    qml/components/private/QuickScrollButton.qml \
    qml/components/private/HighlightImage.qml \
    qml/cover/CoverPage.qml \
    qml/dialogs/PollDialog.qml \
    qml/dialogs/SetTtlDialog.qml \
    qml/pages/About.qml \
    qml/pages/AuthorizationCode.qml \
    qml/pages/AuthorizationNumber.qml \
    qml/pages/AuthorizationPassword.qml \
    qml/pages/Chat.qml \
    qml/pages/ChatList.qml \
    qml/pages/Loading.qml \
    qml/pages/Settings.qml \
    sailjail/yottagram.desktop \
    translations/*.ts \
    yottagram.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += sailfishapp_i18n

TRANSLATIONS += \
    translations/yottagram-es.ts \
    translations/yottagram-pl.ts \
    translations/yottagram-sv.ts \
    translations/yottagram-zh_CN.ts

HEADERS += \
    src/calls.h \
    src/chatlistfilters.h \
    src/components/audiorecorder.h \
    src/components/autodownloadsettings.h \
    src/components/basicgroupfullinfo.h \
    src/components/basicgroupinfo.h \
    src/components/basicgroupsinfo.h \
    src/components/pinnedmessages.h \
    src/components/scopenotificationsettings.h \
    src/components/secretchatinfo.h \
    src/components/secretchatsinfo.h \
    src/components/supergroupfullinfo.h \
    src/components/supergroupinfo.h \
    src/components/supergroupsinfo.h \
    src/components/thumbnail.h \
    src/components/userfullinfo.h \
    src/contents/call.h \
    src/contents/contact.h \
    src/contents/contentinterface.h \
    src/contents/location.h \
    src/contents/poll.h \
    src/contents/animation.h \
    src/contents/audio.h \
    src/contents/document.h \
    src/contents/photo.h \
    src/contents/sticker.h \
    src/contents/video.h \
    src/contents/videonote.h \
    src/contents/voicenote.h \
    src/contents/animatedemoji.h \
    src/core.h \
    src/dbushelper.h \
    src/files/contentfile.h \
    src/files/file.h \
    src/files/files.h \
    src/message.h \
    src/notifications.h \
    src/overloaded.h \
    src/authorization.h \
    src/core/telegramreceiver.h \
    src/core/telegrammanager.h \
    src/chatlist.h \
    src/chat.h \
    src/proxymodel.h \
    src/pulseaudiohelper.h \
    src/savedanimations.h \
    src/stickerset.h \
    src/stickersets.h \
    src/tgsioplugin/tgsioplugin.h \
    src/tgsioplugin/tgsiohandler.h \
    src/user.h \
    src/users.h \
    src/webpage.h

RESOURCES += \
    qml/resources/icons.qrc

dbus.files = com.verdanditeam.yottagram.service
dbus.path = /usr/share/dbus-1/services/

notificationcategories.files=x-verdanditeam.yottagram.im.conf
notificationcategories.path=/usr/share/lipstick/notificationcategories

INSTALLS += dbus notificationcategories

DBUS_ADAPTORS += com.verdanditeam.yottagram.calls.xml
DBUS_INTERFACES += com.verdanditeam.yottagram.calls.xml

# https://github.com/Samsung/rlottie.git

RLOTTIE_CONFIG = $${PWD}/vendor/rlottie/src/vector/config.h
PRE_TARGETDEPS += $${RLOTTIE_CONFIG}
QMAKE_EXTRA_TARGETS += rlottie_config

rlottie_config.target = $${RLOTTIE_CONFIG}
rlottie_config.commands = touch $${RLOTTIE_CONFIG} # Empty config is fine

DEFINES += LOTTIE_THREAD_SUPPORT

INCLUDEPATH += \
    vendor/rlottie/inc \
    vendor/rlottie/src/vector \
    vendor/rlottie/src/vector/freetype

SOURCES += \
    vendor/rlottie/src/lottie/lottieanimation.cpp \
    vendor/rlottie/src/lottie/lottieitem.cpp \
    vendor/rlottie/src/lottie/lottieitem_capi.cpp \
    vendor/rlottie/src/lottie/lottiekeypath.cpp \
    vendor/rlottie/src/lottie/lottieloader.cpp \
    vendor/rlottie/src/lottie/lottiemodel.cpp \
    vendor/rlottie/src/lottie/lottieparser.cpp

SOURCES += \
    vendor/rlottie/src/vector/freetype/v_ft_math.cpp \
    vendor/rlottie/src/vector/freetype/v_ft_raster.cpp \
    vendor/rlottie/src/vector/freetype/v_ft_stroker.cpp \
    vendor/rlottie/src/vector/stb/stb_image.cpp \
    vendor/rlottie/src/vector/varenaalloc.cpp \
    vendor/rlottie/src/vector/vbezier.cpp \
    vendor/rlottie/src/vector/vbitmap.cpp \
    vendor/rlottie/src/vector/vbrush.cpp \
    vendor/rlottie/src/vector/vdasher.cpp \
    vendor/rlottie/src/vector/vdrawable.cpp \
    vendor/rlottie/src/vector/vdrawhelper.cpp \
    vendor/rlottie/src/vector/vdrawhelper_common.cpp \
    vendor/rlottie/src/vector/vdrawhelper_neon.cpp \
    vendor/rlottie/src/vector/vdrawhelper_sse2.cpp \
    vendor/rlottie/src/vector/vmatrix.cpp \
    vendor/rlottie/src/vector/vimageloader.cpp \
    vendor/rlottie/src/vector/vinterpolator.cpp \
    vendor/rlottie/src/vector/vpainter.cpp \
    vendor/rlottie/src/vector/vpath.cpp \
    vendor/rlottie/src/vector/vpathmesure.cpp \
    vendor/rlottie/src/vector/vraster.cpp \
    vendor/rlottie/src/vector/vrle.cpp

NEON = $$system(g++ -dM -E -x c++ - < /dev/null | grep __ARM_NEON__)
SSE2 = $$system(g++ -dM -E -x c++ - < /dev/null | grep __SSE2__)

!isEmpty(NEON) {
    message(Using NEON render functions)
    SOURCES += vendor/rlottie/src/vector/pixman/pixman-arm-neon-asm.S
} else {
    !isEmpty(SSE2) {
        message(Using SSE2 render functions)
        SOURCES += vendor/rlottie/src/vector/vdrawhelper_sse2.cpp
    } else {
        message(Using default render functions)
    }
}
