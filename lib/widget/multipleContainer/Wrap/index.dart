import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Wrap Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 可以在水平或垂直方向多行显示其子widget。
""";

const String _Text1 =
"""###  
> 属性参数：
```
this.direction = Axis.horizontal,
this.alignment = WrapAlignment.start,
this.spacing = 0.0,
this.runAlignment = WrapAlignment.start,
this.runSpacing = 0.0,
this.crossAxisAlignment = WrapCrossAlignment.start,
this.textDirection,
this.verticalDirection = VerticalDirection.down,
    
  direction：主轴（mainAxis）的方向，默认为水平。
  alignment：主轴方向上的对齐方式，默认为start。
  spacing：主轴方向上的间距。
  runAlignment：run的对齐方式。run可以理解为新的行或者列，如果是水平方向布局的话，run可以理解为新的一行。
  runSpacing：run的间距。
  crossAxisAlignment：交叉轴（crossAxis）方向上的对齐方式。
  textDirection：文本方向。
  verticalDirection：定义了children摆放顺序，默认是down，见Flex相关属性介绍。
    
```
""";


class WrapWidget extends BasefulWidget {

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