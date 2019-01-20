import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Tooltip/demo01.dart';

const String title = "Icon Widget";

const String _Text0 =
"""### **描述**
> $title 
- A Material Design icon.
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 new Column(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10%',
          onPressed: () {
            state.setState(() {
              _volume *= 1.1;
            });
          },
        ),
        IconTheme(
          child: IconButton(icon: Icon(Icons.image), onPressed: null),
        ),

      ],
 );
```
""";


class IconWidget extends BasefulWidget {

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