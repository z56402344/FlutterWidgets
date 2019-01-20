import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "CustomSingleChildLayout  Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个自定义的拥有单个子widget的布局widget
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 下面例子中是一个固定尺寸的布局
```
 Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(5.0),
      child: CustomSingleChildLayout(
        delegate: FixedSizeLayoutDelegate(Size(200.0, 200.0)),
        child: Container(
          color: Colors.red,
          width: 100.0,
          height: 300.0,
        ),
      ),
 );
```
""";


class CustomSingleChildLayoutWidget extends BasefulWidget {

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