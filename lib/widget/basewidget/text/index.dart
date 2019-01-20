import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';
import 'demo03.dart';

const String _Text0 =
"""### **描述**
> Text Widget
- 文本小部件
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
 Text(
      'Hello, Xiao! How are you?',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold),
 );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
 Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: <TextSpan>[
          TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
 );
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03
```
 其他效果展示
```
""";

class TextWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(""),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text2),
                SizedBox(
                  child: Demo02(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text3),
                SizedBox(
                  child: Demo03(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}