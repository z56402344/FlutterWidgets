import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoSwitch Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的开关. 用于单一状态的开/关
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 MergeSemantics(
    child: ListTile(
      title: Text('Lights'),
      trailing: CupertinoSwitch(
        value: _lights,
        onChanged: (bool value) { state.setState(() { _lights = value; }); },
      ),
      onTap: () { state.setState(() { _lights = !_lights; }); },
    ),
 );
```
""";


class CupertinoSwitchWidget extends BasefulWidget {

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