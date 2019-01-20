import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String title = "GridView Widget";

const String _Text0 = """   ### **描述**
> $title
-  new GridView.extent 方式创建的
""";

const String _Text1 = """###  
> Demo04 代码
```
 new GridView.extent(
    maxCrossAxisExtent: 100,
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10.0,
    children: <Widget>[
      Image.asset("images/food01.jpeg"),
      Image.asset("images/food02.jpeg"),
      Image.asset("images/food03.jpeg"),
      Image.asset("images/food04.jpeg"),
      Image.asset("images/food05.jpeg"),
    ],
 ),
  
```
""";

class Demo04Widget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            child: new SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0), // 间距
                  MarkdownBody(data: _Text0),
                  SizedBox(height: 20.0), // 间距
                  MarkdownBody(data: _Text1),
                ],
              ),
            ),
          ),
          Expanded(
            child: new GridView.extent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                Image.asset("images/food01.jpeg"),
                Image.asset("images/food02.jpeg"),
                Image.asset("images/food03.jpeg"),
                Image.asset("images/food04.jpeg"),
                Image.asset("images/food05.jpeg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
