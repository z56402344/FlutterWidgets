import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "FractionallySizedBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个widget，它把它的子控件放在可用空间的一小部分。FractionallySizedBox控件会根据现有空间，来调整child的尺寸，所以说child就算设置了具体的尺寸数值，也不起作用
- FractionallySizedBox的布局行为主要跟它的宽高因子两个参数有关，当参数为null或者有具体数值的时候，布局表现不一样。当然，还有一个辅助参数alignment，作为对齐方式进行布局。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 用widthFactor,heightFactor这个两个属性反应控件的效果
- 从左至右依次是
  1.widthFactor: 1.5, heightFactor: 1.5,
  2.widthFactor: 1.5, heightFactor: 0.5,
  3.widthFactor: 1.5, heightFactor: null,
  4.widthFactor: null, heightFactor: 0.5,
  5.widthFactor: null, heightFactor: null,

```
 Container(
      color: Colors.blue,
      height: 50.0,
      width: 50.0,
      padding: const EdgeInsets.all(10.0),
      child: new FractionallySizedBox(
        alignment: Alignment.topLeft,
        widthFactor: 1.5,
        heightFactor: 1.5,
        child: new Container(
          color: Colors.red,
        ),
      ),
 ),
```
""";


class FractionallySizedBoxWidget extends BasefulWidget {

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