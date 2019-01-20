import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "CircularProgressIndicator Widget";

const String _Text0 =
"""### **描述**
> $title 
- Material Design风格的循环进度条，旋转以指示应用程序正忙。比如Http异步请求的时候代表正在获取的状态显示
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
属性参考
strokeWidth:用于绘制圆的线条的宽度。
backgroundColor:背景颜色。
value:如果为非null，则该进度指示器的值为0.0，对应于没有进度，1.0对应于所有进度。
valueColor：动画的颜色值。

 new CircularProgressIndicator()
```
""";


class CircularProgressIndicatorWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: Text(title)),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
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