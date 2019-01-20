import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "BottomSheet Widget";

const String _Text0 =
"""### **描述**
> $title 
- BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          height: 300.0,
          child: new Image.asset("images/food01.jpeg"),
        );
      },
    ).then((val) {
      print(val);
 });
```
""";


class BottomSheetWidget extends BasefulWidget {

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
                  height: 500,
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}