import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';
import 'demo03.dart';
import 'demo04.dart';


const String _Text0 =
"""### **描述**
> Container Widget
- 是一个便利的Widget，它把通用的绘制、定位和Widget的大小结合了起来。
- Container会先用padding填充子Widget和border之间的空白，然后添加其他的额外的约束constraints，最后会把剩余的都用margin来填充。在绘制的过程中，会优先绘制transform，然后是decoration，最后是foregroundDecoration。
- 对于一个没有子Widget的Container，在没有一些约束的条件时，它会尽可能的大；而一旦有了约束或者子Widget，它就会变得尽可能小。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
 Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFF00FF00),
          width: 48.0,
          height: 48.0,
  );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
 Container(
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0,
    ),
    padding: const EdgeInsets.all(8.0),
    color: Colors.teal.shade700,
    alignment: Alignment.center,
    child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
    foregroundDecoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://www.example.com/images/frame.png'),
        centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
      ),
    ),
    transform: Matrix4.rotationZ(0.1),
)
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03
- Container 包含一个Row横向和一个Column垂直排放的容器
```
 new Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Demo01(),
              Demo01(),
              Demo01(),
              Demo01(),
              Demo01(),
            ],
          ),
          Demo01(),
          Demo01(),
        ],
      ),
    );
```
""";

const String _Text4 =
"""###  
> 代码参考 Demo04
- 多重Container嵌套
- 绘制的时候能够看出是先画父容器一级一级画子容器
```
 new Container(//绿色容器
      margin: const EdgeInsets.all(10.0),
      color: const Color(0xFF00FF00),
      width: 100.0,
      height: 100.0,
      child: Center(//居中控件
        child: new Container((//黄色容器
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFFffff00),
          width: 80.0,
          height: 80.0,
          child: new Container(//蓝色容器
            margin: const EdgeInsets.all(10.0),
            color: const Color(0xff00f0ff),
            width: 60.0,
            height: 60.0,
            child: new Container(//白色容器
              margin: const EdgeInsets.all(10.0),
              color: const Color(0xFFffffff),
              width: 40.0,
              height: 40.0,
              child: Center(
                child: Text(
                          "widget",
                          style: TextStyle(fontSize: 12)
                       ),
              ),
            ),
          ),
        ),
      ),
    );
```
""";


class ContainerWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(""),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text2),
                SizedBox(
                  child: Demo02(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text3),
                SizedBox(
                  child: Demo03(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text4),
                SizedBox(
                  child: Demo04(),
                ),

              ],
            ),
          ),
        );
  }

//  StatelessWidget _Demo01(){
//    return new Container(
//          margin: const EdgeInsets.all(10.0),
//          color: const Color(0xFF00FF00),
//          width: 48.0,
//          height: 48.0,
//      );
//  }


}