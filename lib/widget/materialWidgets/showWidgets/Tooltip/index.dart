import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Tooltip/demo01.dart';

const String title = "Tooltip Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 new Row(
      // <Widget> is the type of items in the list.
      children: <Widget>[
        new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null, // null disables the button
        ),
        // Expanded expands its child to fill the available space.
        new Expanded(
          child: Text("我是标题"),
        ),
        new IconButton(
          icon: new Icon(Icons.search),
          tooltip: 'Search',
          onPressed: null,
        ),
      ],
 );
```
""";


class TooltipWidget extends BasefulWidget {

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