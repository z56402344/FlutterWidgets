import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "Radio Widget";

const String _Text0 = """### **描述**
> $title
- 单选框，允许用户从一组中选择一个选项。
    
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 Radio<String>(
    value: "语文",
    groupValue: _newValue,
    onChanged: (value) {
      state.setState(() {
        _newValue = value;
      });
    }
  )
  
  RadioListTile<String>(
    value: '语文',
    title: Text('语文'),
    groupValue: _newValue,
    onChanged: (value) {
      state.setState(() {
        _newValue = value;
      }
     );
    },
 ),
```
""";

class RadioWidget extends BasefulWidget {
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
