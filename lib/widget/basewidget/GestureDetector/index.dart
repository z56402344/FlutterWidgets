import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String _Text0 = """### **描述**
> GestureDetector Widget
- 触摸事件Demo
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 GestureDetector(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("触摸事件测试"),
            ),
            SizedBox(
              height: 300,
              child:  ListView(
                children: _getList(),
              ),
            )
          ],
        ),
        onTapDown: ((tapDownDeail) {
          showToast("按下事件");
        }),
        onTap: (() {
          //单击事件
          showToast("单击事件");
        }),
        onTapUp: ((tapUpDeail) {
          showToast("抬起事件");
        }),
        onTapCancel: (() {
          showToast("触摸取消事件");
        }),
        onDoubleTap: (() {
          showToast("双击事件");
        }),
        onLongPress: (() {
          showToast("长按事件");
        }),
        onLongPressUp: (() {
          showToast("长按抬起事件");
        }),
        onVerticalDragDown: ((dragDownDetail) {
          showToast("垂直移动按下事件");
        }),
        onVerticalDragUpdate: ((dragUpDetail) {
          showToast("垂直移动抬起事件");
        }),
        onVerticalDragStart: ((dragStartDetail) {
          showToast("垂直移动开始事件");
        }),
        onVerticalDragEnd: ((dragEndDetail) {
          showToast("垂直移动结束事件");
        }),
        onVerticalDragCancel: (() {
          showToast("垂直移动取消事件");
        }),
        onHorizontalDragDown: ((dragDownDetail) {
          showToast("水平移动按下事件");
        }),
        onHorizontalDragUpdate: ((dragUpDetail) {
          showToast("水平移动按下事件");
        }),
        onHorizontalDragStart: ((dragStartDetail) {
          showToast("水平移动开始事件");
        }),
        onHorizontalDragEnd: ((dragEndDetail) {
          showToast("水平移动结束事件");
        }),
        onHorizontalDragCancel: (() {
          showToast("水平移动取消事件");
    }));
```
""";


class TGestureDetectorWidget extends BasefulWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(""),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(
              height: 500,
              child: Demo01(),
            ),
            SizedBox(height: 40.0),

          ],
        ),
      ),
    );
  }


}
