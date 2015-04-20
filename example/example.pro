TARGET = example
TEMPLATE = app
SOURCES += main.cpp

RESOURCES += \
    sample.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../basic-xml-syntax-highlighter/release/ -lbasic-xml-syntax-highlighter
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../basic-xml-syntax-highlighter/debug/ -lbasic-xml-syntax-highlighter
else:unix: LIBS += -L$$OUT_PWD/../basic-xml-syntax-highlighter/ -lbasic-xml-syntax-highlighter

INCLUDEPATH += $$PWD/../basic-xml-syntax-highlighter
DEPENDPATH += $$PWD/../basic-xml-syntax-highlighter

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../basic-xml-syntax-highlighter/release/libbasic-xml-syntax-highlighter.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../basic-xml-syntax-highlighter/debug/libbasic-xml-syntax-highlighter.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../basic-xml-syntax-highlighter/release/basic-xml-syntax-highlighter.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../basic-xml-syntax-highlighter/debug/basic-xml-syntax-highlighter.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../basic-xml-syntax-highlighter/libbasic-xml-syntax-highlighter.a

greaterThan(QT_MAJOR_VERSION, 4) {
  QT += widgets
  INCLUDEPATH += $$QT_DIR/include/QtWidgets \
                 $$QT_DIR/QtWidgets
}
