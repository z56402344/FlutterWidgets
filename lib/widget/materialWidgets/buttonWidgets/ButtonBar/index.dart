import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String _Text0 =
"""### **描述**
> ButtonBar Widget
- 文本小部件


- Button常用参数:
     this.alignment = MainAxisAlignment.end, //相对位置
    this.mainAxisSize = MainAxisSize.max,
    this.children = const <Widget>[], //多个button
""";


const String _Text1 =
"""###  
> 代码参考 Demo02
```
 ButtonBar(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('RaisedButton01',
              style: new TextStyle(color: Colors.white)),
        ),
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('RaisedButton02',
              style: new TextStyle(color: Colors.white)),
        ),
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('RaisedButton03',
              style: new TextStyle(color: Colors.white)),
        ),
      ],
  );
```
""";


class ButtonBarWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(""),),
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