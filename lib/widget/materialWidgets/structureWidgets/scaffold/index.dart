import 'package:flutter/material.dart';
import '../../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';

const String _Text0 = """### **描述**
> scaffold Widget
- 实现了material design的基本可视化布局结构
-  这个类提供用于显示drawers, snack bars, and bottom sheets的APIS.
""";

const String _Text1 = """###  
> 代码参考 Demo01
- 此Demo展示一个Scaffold包含AppBar、BottomAppBar和FloatingAction按钮。Scaffold正中心放置一个文本，FloatingActionButton居中停靠在底部应用程序栏中。floatingAction按钮连接到一个递增计数器的回调。
-   主要属性说明:
    this.appBar,  //界面顶部的AppBar
    this.body,    //当前界面所显示的主要内容
    this.floatingActionButton, //浮动按钮
    this.floatingActionButtonLocation,  //浮动按钮位置
    this.floatingActionButtonAnimator,  //浮动按钮动画
    this.persistentFooterButtons,   //固定在下方显示的按钮
    this.drawer,  //侧边栏控件
    this.endDrawer,
    this.bottomNavigationBar, //显示在底部的导航栏按钮栏
    this.bottomSheet,
    this.backgroundColor,   //背景颜色
    this.resizeToAvoidBottomPadding = true, //控制界面内容body 
    this.primary = true,
""";

const String _Text2 = """###  
> 代码参考 Demo02
```

```
""";

class ScaffoldWidget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(""),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(
              child: RaisedButton(
                onPressed: () {
                  _demo01();
                },
                color: Colors.blue[400],
                child: new Text('点击查看Demo01',
                    style: new TextStyle(color: Colors.white)),
              ),
            ),

            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }

  void _demo01() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new Demo01();
    }));
  }

  void _demo02() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new Demo02();
    }));
  }
}
