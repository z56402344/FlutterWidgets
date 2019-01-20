import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoTabBar Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 CupertinoTabBar(
    currentIndex: currentIndex,
    items: bottomTabs,
    onTap: (index) {
      state.setState(() {
        currentIndex = index;
        currentPage = tabBodies[currentIndex];
      });
  });
```
""";


class CupertinoTabBarWidget extends BasefulWidget {

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