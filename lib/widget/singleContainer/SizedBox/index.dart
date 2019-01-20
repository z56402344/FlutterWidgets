import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "SizedBox Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小。
- 
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段使子窗口小部件（带有一些文本的卡）具有确切的大小200x300，父布局进行限制：
```
 Container(
      color: Colors.green,
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 200.0,
        height: 200.0,
        child: Container(
          color: Colors.red,
          width: 100.0,
          height: 300.0,
        ),
      ),
 );
```
""";


class SizedBoxWidget extends BasefulWidget {

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