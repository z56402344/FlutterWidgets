import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "ListView Widget";

const String _Text0 = """   ### **描述**
> $title
-  ListView.separated 方式创建的
""";

const String _Text1 = """###  
> Demo04 代码
```
  ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return new Text("text");
                },
                separatorBuilder: (BuildContext context, int index) {
                  return new Container(height: 1.0, color: Colors.blue);
                },
                itemCount: 40),
  
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
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return new Text("text $index");
                },
                separatorBuilder: (BuildContext context, int index) {
                  return new Container(height: 1.0, color: Colors.blue);
                },
                itemCount: 40),
          ),
        ],
      ),
    );
  }
}
