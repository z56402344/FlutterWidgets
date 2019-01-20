import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "ListBody Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个widget，它沿着一个给定的轴，顺序排列它的子元素
- ListBody是一个不常直接使用的控件，一般都会配合ListView或者Column等控件使用。ListBody的作用是按给定的轴方向，按照顺序排列子节点。
""";

const String _Text1 =
"""###  
> 属性参数：
```
this.mainAxis = Axis.vertical,
this.reverse = false,
List<Widget> children = const <Widget>[],
  
  mainAxis：排列的主轴方向。
  reverse：是否反向。
```

> Demo01 ：
```
  Flex(
      direction: Axis.vertical,
      children: <Widget>[
        ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: <Widget>[
            Container(color: Colors.red, width: 50.0, height: 50.0,),
            Container(color: Colors.yellow, width: 50.0, height: 50.0,),
            Container(color: Colors.blue, width: 50.0, height: 50.0,),
            Container(color: Colors.green, width: 50.0, height: 50.0,),
            Container(color: Colors.black, width: 50.0, height: 50.0,),
          ],
        )
      ],
  );
    
```
""";


class ListBodyWidget extends BasefulWidget {

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