TARGET = basic-xml-syntax-highlighter
TEMPLATE = lib
CONFIG += staticlib
SOURCES += BasicXMLSyntaxHighlighter.cpp
HEADERS += BasicXMLSyntaxHighlighter.h

greaterThan(QT_MAJOR_VERSION, 4) {
  QT += widgets
  INCLUDEPATH += $$QT_DIR/include/QtWidgets \
                 $$QT_DIR/QtWidgets
}
