import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "IntrinsicHeight Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个widget，它将它的子widget的高度调整其本身实际的高度.
- 例如，当可用的高度不受限制，并且您希望有一个子widget，否则它将尝试无限扩展以将自身大小改为更合理的高度。
- 这个类比较昂贵，因为它在最终布局阶段之前添加了一个推测性的布局过程。尽可能避免使用。在最坏的情况下，这个小部件可以在树的深度产生O（n²）的布局。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
-  如果没有IntrinsicHeight包裹的话 yellow，blue高度会撑满全屏，这个控件因为效率问题建议少用
```
 new IntrinsicHeight(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            color: Colors.red,
            width: 50.0,
            height: 50.0,
          ),
          new Container(color: Colors.yellow, width: 50.0),
          new Container(color: Colors.blue, width: 50.0),
        ],
      ),
 );
```
""";


class IntrinsicHeightWidget extends BasefulWidget {

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