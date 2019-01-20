import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  bool type = true;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new RaisedButton(
          onPressed: (() {
            state.setState(() {
              type = !type;
            });
          }),
          child: Text("点击 Alert"),
        ),
        getWidgets(),
      ],
    );
  }

  Widget getWidgets() {
    if (type) {
      return Text("点击按钮展示Alert");
    } else {
      return new Container(
        color: Colors.grey,
        child: CupertinoDialog(
          child: CupertinoAlertDialog(
            title: Text("我是标题"),
            content: Text("我是content"),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("按钮1"),
              ),
              CupertinoDialogAction(
                child: Text("按钮2"),
              ),
            ],
          ),
        ),
      );

    }
  }
}
