import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "Switch Widgets";

const String _Text0 = """### **描述**
> $title
- 
    
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 new Switch(
    value: bval,
    onChanged: (bool val) {
      method1(val);
    },
 );
```
""";

class SwitchWidget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(
              child: Demo01(),
            ),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }
}
