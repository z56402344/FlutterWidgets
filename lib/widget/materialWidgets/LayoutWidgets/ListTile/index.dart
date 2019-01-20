import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "ListTile Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标。
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
 ListTile(
        leading: const Icon(Icons.flight_land),
        title: const Text('Trix\'s airplane'),
        subtitle: _act != 2 ? const Text('The airplane is only in Act II.') : null,
        enabled: _act == 2,
        onTap: () { /* react to the tile being tapped */ }
    );
```
""";


class ListTileWidget extends BasefulWidget {

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