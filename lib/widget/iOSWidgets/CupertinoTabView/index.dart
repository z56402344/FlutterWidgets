import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoTabView Widget";

const String _Text0 =
"""### **描述**
> $title 
- 支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 
```
""";


class CupertinoTabViewWidget extends BasefulWidget {

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