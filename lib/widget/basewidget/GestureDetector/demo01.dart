import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  List listMsg = new List();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
  }

  List<Widget> _getList() {
    List<Widget> list = new List();
    for (int i = 0; i < listMsg.length; i++) {
      Text text = new Text(listMsg[i]);
      list.insert(0,text);
    }

    return list;
  }

  void showToast(String msg) {
    Fluttertoast.showToast(msg: msg);
    print("$msg");
    state.setState(() {
      listMsg.add(msg);
    });
  }
}
