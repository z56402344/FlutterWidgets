import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoDialogAction Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的对话框
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 CupertinoAlertDialog(
      title: Text("我是标题"),
      content: Text("我是content"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("按钮1"),
        ),
        CupertinoDialogAction(
          child: Text("按钮2"),
        ),
      ],
  );
```
""";


class CupertinoDialogActionWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title)),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}