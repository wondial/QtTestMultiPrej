QT += quick

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#表示编译后的库名字为BigWay
TARGET = BigWay
#DESTDIR = ../bin#定义项目编译之后生成的结果文件的存放路径

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

TRANSLATIONS += \
    BigWay_zh_CN.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target

#表示Windows环境的特殊设置，这个大括号不能单独放在下一行，否则编译会报错
win32{
    target.path = ../$${TARGET}/bin
    CONFIG(debug, debug|release) {
        DESTDIR = ../$${TARGET}/bin/MyDebug
        LIBS += -L../SmallBoy/bin/MyDebug
        LIBS += -lSmallBoy
        #-lmain_lib
        MOC_DIR = ../$${TARGET}/bin/MyDebug/tmp
        OBJECTS_DIR = ../$${TARGET}/bin/MyDebug/tmp
        RCC_DIR = ../$${TARGET}/bin/MyDebug/resources
        UI_DIR = ../$${TARGET}/bin/MyDebug/ui
    } else {
        DESTDIR = ../$${TARGET}/bin/MyRelease
        LIBS += -L../SmallBoy/bin/MyRelease
        LIBS += -lSmallBoy
        # -lmain_lib
        MOC_DIR = ../$${TARGET}/bin/MyRelease/tmp
        OBJECTS_DIR = ../$${TARGET}/bin/MyRelease/tmp
        RCC_DIR = ../$${TARGET}/bin/MyRelease/resources
        UI_DIR = ../$${TARGET}/bin/MyDebug/ui
    }
    INSTALLS += target
}

#表示Linux环境的特殊设置，这个大括号不能单独放在下一行，否则编译会报错
unix{
    LIBS += ../bin/libSmallBoy.so#包含项目需要用到的共享库，注意文件名多了关键字"lib"，扩展名是.so
}
#    LIBS += ../bin/SmallBoy.lib#包含项目需要用到的共享库

INCLUDEPATH = $$PWD/../SmallBoy
