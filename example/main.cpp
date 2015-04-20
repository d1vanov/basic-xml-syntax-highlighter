#include "../basic-xml-syntax-highlighter/BasicXMLSyntaxHighlighter.h"
#include <QApplication>
#include <QFile>
#include <QTextEdit>

int main(int argc, char * argv[])
{
    QApplication app(argc, argv);

    QFile file(":/sample.xml");
    file.open(QIODevice::ReadOnly);
    QByteArray sampleXml = file.readAll();
    file.close();

    QTextEdit editor;
    BasicXMLSyntaxHighlighter * highlighter = new BasicXMLSyntaxHighlighter(&editor);
    Q_UNUSED(highlighter);
    editor.setPlainText(sampleXml);
    editor.setReadOnly(true);
    editor.show();

    return app.exec();
}
