import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Offstage Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个布局widget，可以控制其子widget的显示和隐藏。
- 当offstage为true，当前控件不会被绘制在屏幕上，不会响应点击事件，也不会占用空间；
  当offstage为false，当前控件则跟平常用的控件一样渲染绘制；
- 动画继续在后台的子级运行，因此使用电池和CPU时间，而不管动画最终是否可见。
- 后台可以用来测量小部件的尺寸，而不需要将其显示在屏幕上。要在不需要时隐藏窗口小部件，最好从树中完全删除该窗口小部件，而不是将其保留在后台子树中。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段使子控件位置在容器内部中心
```
 Column(
      children: <Widget>[
        new Offstage(
          offstage: offstage,
          child: Image.asset("images/food01.jpeg"),
        ),
        new RaisedButton(
          child: Text("点击切换显示"),
          onPressed: () {
            setState(() {
              offstage = !offstage;
            });
          },
        ),
      ],
 );
```
""";


class OffstageWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0), // 间距
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