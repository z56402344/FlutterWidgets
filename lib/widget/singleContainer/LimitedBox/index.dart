import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "LimitedBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个当其自身不受约束时才限制其大小的盒子
- 如果该小部件的最大宽度不受约束，则其子部件的宽度限制为最大宽度。同样，如果这个小部件的最大高度是不受约束的，那么它的子部件的高度限制为最大高度。
- 这样做的效果是在无边界的环境中给孩子一个自然的维度。例如，通过为通常试图尽可能大的小部件提供一个maxheight，小部件通常会自行调整大小以适合其父级，但当放置在垂直列表中时，它将具有给定的高度。
- 当组成小部件时，这是很有用的，这些小部件通常会尝试匹配其父母的大小，以便它们在列表中（无边界）表现得合理。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段使子控件位置在容器内部中心
```
 Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 100.0,
          height: 50,
        ),
        LimitedBox(
          maxWidth: 100.0,
          child: Container(
            color: Colors.blue,
            width: 250.0,
            height: 50,
          ),
        ),
      ],
 );
```
""";


class LimitedBoxWidget extends BasefulWidget {

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