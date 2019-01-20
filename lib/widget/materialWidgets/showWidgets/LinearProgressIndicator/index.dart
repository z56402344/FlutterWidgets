import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "LinearProgressIndicator Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 new Container(
        margin: const EdgeInsets.fromLTRB(17.0, 0.0, 17.0, 10.0),
        child: new Column(
            children: <Widget> [
              _getNameText(context, '能量（currentEmergy/maximumEmergy）'),
              new LinearProgressIndicator(value: currentEmergy/maximumEmergy),
              _getNameText(context, '饥饿（currentHunger/maximumHunger）'),
              new LinearProgressIndicator(value: currentHunger/maximumHunger),
              _getNameText(context, '心情（currentMood/maximumMood）'),
              new LinearProgressIndicator(value: currentMood/maximumMood),
            ]
        )
    );
```
""";

class LinearProgressIndicatorWidget extends BasefulWidget {

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