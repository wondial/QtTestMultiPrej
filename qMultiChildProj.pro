TEMPLATE = subdirs

SUBDIRS += \
    SmallBoy\
    BigWay \


#CONFIG选项要求各个子项目按顺序编译，子目录的编译顺序在SUBDIRS中指明
CONFIG += ordered


#SUBDIRS += $$PWD/SubProject3/SubProject3.pro \
#           $$PWD/SubProject2/SubProject2.pro \
#           $$PWD/SubProject/SubProject.pro
