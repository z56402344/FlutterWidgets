import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "SimpleDialog Widget";

const String _Text0 =
"""### **描述**
> $title 
- 简单对话框可以显示附加的提示或操作
  一个简单的对话框为用户提供了几个选项之间的选择。简单对话框的可选标题显示在选项上方。
  选项通常使用SimpleDialogOption小部件表示。如果使用其他小部件，请参阅ContentPadding以获取有关获取材料设计预期间距的约定的注释。
  对于通知用户有关情况的对话框，请考虑使用AlertDialog。
  通常作为子小部件传递给ShowDialog，显示对话框
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: new Text('选择'),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text('选项 1'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new SimpleDialogOption(
              child: new Text('选项 2'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }
```
""";


class SimpleDialogWidget extends BasefulWidget {

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
                  height: 500,
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}