import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "AspectRatio Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个widget，试图将子widget的大小指定为某个特定的长宽比
- 小部件首先尝试布局约束允许的最大宽度。小部件的高度通过应用给定的宽高比来确定，宽高比表示为宽高比。
- 例如，16:9宽高比的值为16.0/9.0。如果最大宽度为无穷大，则通过将纵横比应用于最大高度来确定初始宽度。
- 现在考虑第二个例子，这次的展弦比为2.0，布局约束要求宽度介于0.0和100.0之间，高度介于0.0和100.0之间。我们将选择宽度为100.0（允许的最大值）和高度为50.0（以匹配纵横比）。
- 在同样的情况下，如果纵横比为0.5，我们还将选择宽度100.0（仍然是允许的最大宽度），并尝试使用高度200.0。不幸的是，这违反了限制条件，因为孩子的身高最多可达100.0像素。然后小部件将获取该值并再次应用纵横比以获得50.0的宽度。约束允许该宽度，子对象的宽度为50.0，高度为100.0。如果不允许宽度，小部件将继续遍历约束。如果小部件在查询每个约束后找不到可行的大小，小部件最终将为满足布局约束但无法满足纵横比约束的子部件选择一个大小。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 示例代码是定义了一个高度为200的区域，内部AspectRatio比率设置为1.5，最终AspectRatio的是宽300高200的一个区域。
```
 Container(
      height: 200.0,
      child: new AspectRatio(
        aspectRatio: 1.5,
        child: new Container(
          color: Colors.red,
        ),
      ),
 );
```
""";


class AspectRatioWidget extends BasefulWidget {

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