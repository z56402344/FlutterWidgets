import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "Checkbox Widget";

const String _Text0 = """### **描述**
> $title
- 
    
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Center(
          child: new Row(
            children: <Widget>[
              new Checkbox(
                value: isCheck,
                activeColor: Colors.red,
                onChanged: (bool){
                  state.setState(() {
                    isCheck = bool;
                    for(int i = 0; i< isChecks.length;i++){
                      isChecks[i] = bool;
                    }
                  });
                },
              ),
              Text("全选"),
            ],
          ),

        ),
        new Center(
          child: new CheckboxListTile(
              value: isChecks[0],
              title: new Text('item01'),
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: (bool){
                state.setState(() {
                  isChecks[0]=bool;
                });
              }),
        ),
        ......
      ],
 );
```
""";

class CheckboxWidget extends BasefulWidget {
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
