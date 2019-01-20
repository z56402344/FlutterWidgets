import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "ListView Widget";

const String _Text0 = """   ### **描述**
> $title
-   ListView.builde 方式创建的
""";

const String _Text1 = """###  
> Demo03 代码
```
  ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemExtent: 20.0,
      itemBuilder: (BuildContext context, int index) {
        return Text('entry');
      },
   ),
  
```
""";

class Demo03Widget extends BasefulWidget {
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
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemExtent: 20.0,
              itemBuilder: (BuildContext context, int index) {
                return Text('entry');
              },
            ),
          ),
        ],
      ),
    );
  }
}
