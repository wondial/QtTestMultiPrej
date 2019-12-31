QT -= gui

TARGET = SmallBoy
TEMPLATE = lib
DEFINES += SMALLBOY_LIBRARY

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

#定义项目编译之后生成的结果文件的存放路径
#DESTDIR = ../bin
win32{
    target.path = ../$${TARGET}/bin
    CONFIG(debug, debug|release) {
        DESTDIR = ../$${TARGET}/bin/MyDebug
        MOC_DIR = ../$${TARGET}/bin/MyDebug/tmp
        OBJECTS_DIR = ../$${TARGET}/bin/MyDebug/tmp
        RCC_DIR = ../$${TARGET}/bin/MyDebug/resources
#        LIBS += -L../$${TARGET}/bin/MyDebug
#        LIBS +=  -lSmallBoy
        #-lmain_lib
    } else {
        DESTDIR = ../$${TARGET}/bin/MyRelease
        MOC_DIR = ../$${TARGET}/bin/MyRelease/tmp
        OBJECTS_DIR = ../$${TARGET}/bin/MyRelease/tmp
        RCC_DIR = ../$${TARGET}/bin/MyRelease/resources
#        LIBS += -L../$${TARGET}/bin/MyRelease
#        LIBS += -lSmallBoy
        # -lmain_lib
    }
    INSTALLS += target
}

SOURCES += \
    smallboy.cpp

HEADERS += \
    SmallBoy_global.h \
    smallboy.h

TRANSLATIONS += \
    SmallBoy_zh_CN.ts


# Default rules for deployment.
#unix {
#    target.path = /usr/lib
#}
#!isEmpty(target.path): INSTALLS += target
