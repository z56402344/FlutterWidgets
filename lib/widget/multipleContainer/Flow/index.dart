import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Flow Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 一个实现流式布局算法的widget
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
  Flow(
      delegate: TestFlowDelegate(margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
      children: <Widget>[
        new Container(width: width, height: height, color: Colors.yellow,),
        new Container(width: width, height: height, color: Colors.green,),
        new Container(width: width, height: height, color: Colors.red,),
        new Container(width: width, height: height, color: Colors.black,),
        new Container(width: width, height: height, color: Colors.blue,),
        new Container(width: width, height: height, color: Colors.lightGreenAccent,),
      ],
  );
```
""";


class FlowWidget extends BasefulWidget {

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