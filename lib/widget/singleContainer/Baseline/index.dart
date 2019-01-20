import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Baseine Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 根据子项的基线对它们的位置进行定位的widget。
- 此小部件向下移动子对象，使子对象的基线（或子对象的底部，如果子对象没有基线）是低于此框顶部的基线逻辑像素，然后调整此框的大小以包含子对象。如果基线小于子项顶部到子项基线的距离，则子项将改为顶部对齐。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此Demo效果图中左右两个文本跟中间的Container包裹的红色块底部在一个水平线上
```
 new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Text(
                'BaseLine',
                style: new TextStyle(
                  fontSize: 20.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              ),
            ),
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Text(
                'BaseLine',
                style: new TextStyle(
                  fontSize: 35.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
 );
```
""";


class BaseineWidget extends BasefulWidget {

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
                Image.asset("images/ic_baseline.png"),
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