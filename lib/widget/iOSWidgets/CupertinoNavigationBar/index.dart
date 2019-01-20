import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoNavigationBar Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 CupertinoNavigationBar(
      leading: Icon(Icons.arrow_back),
      middle: Text("标题1"),
      trailing: Text("标题2"),
      previousPageTitle: "标题3",
    ),
 );
```
""";


class CupertinoNavigationBarWidget extends BasefulWidget {

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