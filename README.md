# basic-xml-syntax-highlighter
Basix XML syntax highlighter in C++/Qt (subclass of QSyntaxHighlighter). Uses simple regexes to highlight not very complicated XML content.

The primary limitations are: 
* No specific handling for nested quotes within attributes
* No handling for multi-line comments

Also, at the moment there's no highlight for text content

The repository includes the highlighter class implemented as a static library and the example app. Here's the screenshot of the example app in action: 
![](https://github.com/d1vanov/basic-xml-syntax-highlighter/blob/master/example/example.png)

License: MIT
