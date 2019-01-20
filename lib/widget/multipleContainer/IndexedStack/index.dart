import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "IndexedStack Widget";

const String _Text0 = """   ### **描述**
> $title
- 从一个子widget列表中显示单个孩子的Stack
- IndexedStack继承自Stack，它的作用是显示第index个child，其他child都是不可见的。所以IndexedStack的尺寸永远是跟最大的子节点尺寸一致。
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 Container(
      color: Colors.yellow,
      child: IndexedStack(
        index: 1,
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/food01.jpeg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'layer B',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
 );
```
""";

class IndexedStackWidget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0), // 间距
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
