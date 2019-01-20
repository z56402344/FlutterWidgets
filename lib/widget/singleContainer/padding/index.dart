import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Padding Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 按给定填充插入其子级的小部件。
- 当将布局约束传递给其子级时，填充会按给定的填充收缩约束，从而使子级以较小的大小进行布局。填充然后将自身大小调整到子对象的大小，填充会使其膨胀，从而有效地在子对象周围创建空白空间。
- 设计讨论
为什么使用填充小部件而不是具有container.padding属性的容器？
这两者没有什么区别。如果您提供container.padding参数，container只需为您构建一个padding小部件。
容器不直接实现其属性。相反，容器将一些更简单的小部件组合到一个方便的包中。例如，container.padding属性使容器生成填充小部件，container.decoration属性使容器生成decoratedbox小部件。如果您觉得容器方便，请随意使用。如果没有，请随意构建这些简单的小部件，以满足您的需要。
实际上，Flutter中的大多数部件只是其他简单部件的组合。组合而不是继承是构建小部件的主要机制。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此代码段在每个方向上将子控件（带有一些Text控件的Card控件）缩进8个像素：
```
 Padding(
  padding: EdgeInsets.all(10.0),
  child: const Card(child: Text('Hello World!')),
)
```
""";


class PaddingWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text("Padding Widget"),),
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