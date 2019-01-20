import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Align Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小。
- 例如，要在右下角对齐一个框，您将向此框传递一个比子框的自然大小更大的紧约束，并且对齐方式为Alignment.BottomRight。
- 如果这个小部件的尺寸受到限制，并且widthfactor和heightfactor为空，那么它将尽可能大。如果一个维度是不受约束的，并且相应的大小因子为空，那么该小部件将匹配其子维度中的大小。如果一个大小因子不为空，那么这个小部件的对应维度将是子维度和大小因子的乘积。例如，如果widthfactor为2.0，则此小部件的宽度将始终是其子部件宽度的两倍。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段使子控件位置在屏幕右边
```
 Align(
      alignment: Alignment.topRight,
      child: const Card(
          color: const Color(0xFFffff00),
          child: Text('Hello World!')),
 );
```
""";


class AlignWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text("Padding Widget"),),
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