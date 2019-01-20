import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "Divider Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个逻辑1像素厚的水平分割线，两边都有填充, 可以在多元素容器中配合使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
  Column(
        children: <Widget>[
          Text("我是第一条分割线，高度默认"),
          Divider(),
          Text("我是第二条分割线，高度20"),
          Divider(height: 20,),
          Text("我是第三条分割线，高度30"),
          Divider(height: 30,),
          Text("我是第四条分割线，高度30,红色"),
          Divider(height: 30,color:Colors.red),
        ],
    );
```
""";


class DividerWidget extends BasefulWidget {

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