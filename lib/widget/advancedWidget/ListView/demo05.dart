import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "ListView Widget";

const String _Text0 = """   ### **描述**
> $title
-   ListView.custom 方式创建的
""";

const String _Text1 = """###  
> Demo05 代码
```
  CustomScrollView(
  shrinkWrap: true,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            const Text('I\'m dedicating every day to you'),
            const Text('Domestic life was never quite my style'),
            const Text('When you smile, you knock me out, I fall apart'),
            const Text('And I thought I was so smart'),
          ],
        ),
      ),
    ),
  ],
)
  
```
""";

class Demo05Widget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            child: new SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0), // 间距
                  MarkdownBody(data: _Text0),
                  SizedBox(height: 20.0), // 间距
                  MarkdownBody(data: _Text1),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      <Widget>[
                        const Text('I\'m dedicating every day to you'),
                        const Text('Domestic life was never quite my style'),
                        const Text(
                            'When you smile, you knock me out, I fall apart'),
                        const Text('And I thought I was so smart'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
