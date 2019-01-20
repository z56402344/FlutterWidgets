import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Table Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 为其子widget使用表格布局算法的widget
- 如果只有一行，那么row小部件更合适。如果只有一列，那么sliverlist或column小部件将更合适。
  行根据其内容垂直调整大小。要控制列宽，请使用ColumnWidths属性。
  有关表布局算法的详细信息，请参见renderTable。要控制子元素的对齐，请参见TableCell。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
 Center(
      child: const Card(
          color: const Color(0xFFffff00),
          child: Text('Hello World!')),
 );
```
""";


class TableWidget extends BasefulWidget {

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