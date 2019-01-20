import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "FittedBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 按自己的大小调整其子widget的大小和位置。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段FittedBox控制其子控件的位置等属性
```
  Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: new FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        child: new Container(
          color: Colors.red,
          child: new Text("FittedBox"),
        ),
      ),
  );
```
""";


class FittedBoxWidget extends BasefulWidget {

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