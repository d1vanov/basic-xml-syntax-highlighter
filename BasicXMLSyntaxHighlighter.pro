TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS = basic-xml-syntax-highlighter \
          example
example.depends = basic-xml-syntax-highlighter
