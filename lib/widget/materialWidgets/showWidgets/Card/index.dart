import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "Card Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个 Material Design 卡片。拥有一个圆角和阴影
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 Center(
  child: Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.album),
          title: Text('The Enchanted Nightingale'),
          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
        ),
        ButtonTheme.bar( // make buttons use the appropriate styles for cards
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () { /* ... */ },
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () { /* ... */ },
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
```
""";


class CardWidget extends BasefulWidget {

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