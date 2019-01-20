import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "GridView Widget";

const String _Text0 = """   ### **描述**
> $title
- 一个可滚动的二维小部件数组。有三种创建方式
 new GridView
 new GridView.count
 new GridView.extent
""";

const String _Text1 = """###  
> 属性参数解读：
```
GridView 属性：
  scrollDirection      //滑动方向
  reverse              //是否翻转
  controller           //滚动控制器
  primary              // 
  physics              //
  shrinkWrap           //false=占满整个Container
  padding              //
  itemExtent           //
  itemBuilder          //item Layout
  itemCount            //item展示数量
  addAutomaticKeepAlives  //是否自动报春
  addRepaintBoundaries    //
  addSemanticIndexes      //
  cacheExtent             //是否缓存 
  semanticChildCount      //
  
  
GridView 属性
  Key key,
  this.leading,              // item 前置图标
  this.title,                // item 标题
  this.subtitle,             // item 副标题
  this.trailing,             // item 后置图标
  this.isThreeLine = false,  // item 是否三行显示
  this.dense,                // 直观感受是整体大小
  this.contentPadding,       // item 内容内边距
  this.enabled = true,
  this.onTap,                // 点击事件
  this.onLongPress,          // 长按事件
  this.selected = false,     // 是否选中状态
  
```
""";

class GridViewWidget extends BasefulWidget {
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
            child: Demo01(),
          ),
        ],
      ),
    );
  }
}
