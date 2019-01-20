import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "CustomMultiChildLayout Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 使用一个委托来对多个孩子进行设置大小和定位的小部件
- 之前单节点布局控件中介绍过一个类似的控件--CustomSingleChildLayout，都是通过delegate去实现自定义布局，只不过这次是多节点的自定义布局的控件，通过提供的delegate，可以实现控制节点的位置以及尺寸。
- CustomMultiChildLayout提供的delegate可以控制子节点的布局，具体在如下几点：
  可以决定每个子节点的布局约束条件；
  可以决定每个子节点的位置；
  可以决定自身的尺寸，但是自身的自身必须不能依赖子节点的尺寸。
  可以看到，跟CustomSingleChildLayout的delegate提供的作用类似，只不过CustomMultiChildLayout的稍微会复杂点。
""";

const String _Text1 =
"""###  
> Demo01 ：
```
  Container(
      width: 200.0,
      height: 100.0,
      color: Colors.yellow,
      child: CustomMultiChildLayout(
        delegate: TestLayoutDelegate(),
        children: <Widget>[
          LayoutId(
            id: TestLayoutDelegate.title,
            child: new Text("This is title",
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
          ),
          LayoutId(
            id: TestLayoutDelegate.description,
            child: new Text("This is description",
                style: TextStyle(fontSize: 14.0, color: Colors.red)),
          ),
        ],
      ),
  );
    
```
""";


class CustomMultiChildLayoutWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title),),
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
                SizedBox(height: 40.0),// 间距

              ],
            ),
          ),
        );
  }

}