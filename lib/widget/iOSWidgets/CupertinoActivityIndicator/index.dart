import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoActivityIndicator Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个iOS风格的loading指示器。显示一个圆形的转圈菊花
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 CupertinoActivityIndicator()
```
""";


class CupertinoActivityIndicatorWidget extends BasefulWidget {

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