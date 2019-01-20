import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "SnackBar Widget";

const String _Text0 =
"""### **描述**
> $title 
- 具有可选操作的轻量级消息提示，在屏幕的底部显示。
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 new RaisedButton(
        child: Text("点击我"),
        onPressed: ((){
          final snackBar = new SnackBar(content: new Text("我是 SnackBar"));
          Scaffold.of(context).showSnackBar(snackBar);
        }),
    );
```
""";


class SnackBarWidget extends BasefulWidget {

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