import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "ListView Widget";

const String _Text0 = """   ### **描述**
> $title
- 在构建ListView时有4中选择：
  利用显示的自列表来构造List<Widget>。此构造函数适合于具有少量子元素的列表视图，因为构造列表需要为可能显示在列表视图中的每个子元素执行工作，而不仅仅是那些实际可见的子元素。
  ListView.builder利用IndexedWidgetBuilder来按需构造。这个构造函数适合于具有大量（或无限）子视图的列表视图，因为构建器只对那些实际可见的子视图调用。
  使用ListView.separated构造函数，采用两个IndexedWidgetBuilder：itemBuilder根据需要构建子项separatorBuilder类似地构建出现在子项之间的分隔符子项。此构造函数适用于具有固定数量的子控件的列表视图。
  使用ListView.custom的SliverChildDelegate构造，它提供了定制子模型的其他方面的能力。  例如，SliverChildDelegate可以控制用于估计实际上不可见的孩子的大小的算法。
""";

const String _Text1 = """###  
> 属性参数解读：
```
ListView 属性：
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
  
  
ListTile 属性
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

class ListViewWidget extends BasefulWidget {
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
