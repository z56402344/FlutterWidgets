import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoPageScaffold Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
    new CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(Icons.arrow_back),
          middle: Text("标题"),
          trailing: Text("标题2"),
        ),
        child:Text("body"),
    );
```
""";


class CupertinoPageScaffoldWidget extends BasefulWidget {

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
                  width: 500,
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}