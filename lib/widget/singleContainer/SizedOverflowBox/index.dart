import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "SizedOverflowBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出。
- SizedOverflowBox 是SizedBox与OverflowBox的结合体
- 尺寸部分。通过将自身的固定尺寸，传递给child，来达到控制child尺寸的目的；
  超出部分。可以突破父节点尺寸的限制，超出部分也可以被渲染显示，与OverflowBox类似。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
-  
```
 Container(
      color: Colors.green,
      alignment: Alignment.topRight,
      width: 200.0,
      height: 200.0,
      padding: EdgeInsets.all(5.0),
      child: SizedOverflowBox(
        size: Size(100.0, 200.0),
        child: Container(
          color: Colors.red,
          width: 200.0,
          height: 100.0,
        ),
      ),
 );
```
""";


class SizedOverflowBoxWidget extends BasefulWidget {

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