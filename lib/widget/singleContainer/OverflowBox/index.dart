import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "OverflowBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 对其子项施加不同约束的widget，它可能允许子项溢出父级。
- 这个控件，允许child超出parent的范围显示，当然不用这个控件，也有很多种方式实现类似的效果。 
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- child widget 超出父布局
```
 Container(
      color: Colors.green,
      width: 100.0,
      height: 100.0,
      padding: const EdgeInsets.all(25.0),
      child: OverflowBox(
        alignment: Alignment.topLeft,
        maxWidth: 150.0,
        maxHeight: 200.0,
        child: Container(
          color: Color(0x33FF00FF),
          width: 300.0,
          height: 300.0,
        ),
      ),
 );
```
""";


class OverflowBoxWidget extends BasefulWidget {

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