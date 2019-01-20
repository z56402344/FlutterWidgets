import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';

const String title = "Center Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 对其子项施加附加约束的widget
- 这个控件的作用是添加额外的限制条件（constraints）到child上，本身挺简单的，可以被一些控件替换使用
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段通过应用boxConstraints使子窗口小部件（带有一些文本的卡）填充父窗口小部件，展开
```
  new Container(
      height: 100,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const Card(child: Text('Hello World!')),
      ),
  );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
- 在一个宽高200.0的Container上添加一个约束最大最小宽高的ConstrainedBox，实际的显示中，则是一个宽高为150.0的区域
```
 ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 100.0,
        minHeight: 100.0,
        maxWidth: 150.0,
        maxHeight: 150.0,
      ),
      child: new Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
 );
```
""";


class ConstrainedBoxWidget extends BasefulWidget {

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
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text2),
                SizedBox(
                  child: Demo02(),
                ),
                SizedBox(height: 40.0),// 间距

              ],
            ),
          ),
        );
  }

}