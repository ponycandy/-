QT       += core gui
#这是一个如何自动生成代码的模板
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# 我一直想知道如何自动生成代码，现在有这个机制了



#在这里构建一个对象，有点像是对象式编程中的一个类，类名随便，主要是成员要有两个：target和commands
test_gen_code.target=gencommand
#在commands里面定义的就是代码自动生成的步骤了，最好是使用parser的绝对路径
# test_gen_code.commands=cd D:/vsworkspace/gencodeparser;gencodeparser.exe
test_gen_code.commands=D:/QT/prjdir/generatecodes/gencodeparser.exe
#用分号分割不同的指令片段
#gencodeparser.exe将会执行生成目标文件的任务
#加入到自定义目标对象列表中
QMAKE_EXTRA_TARGETS += test_gen_code
#加入到构建依赖列表最前面，会被最先执行
PRE_TARGETDEPS +=gencommand


SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h \
    helloworldheader.h #假设生成的头文件是这个，那么可以在后面加上这个


FORMS += \
    mainwindow.ui
