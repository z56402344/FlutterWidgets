import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  bool type = true;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: (() {
        state.setState(() {
          type = !type;
        });
      }),
      child: getWidgets(),
    );
  }

  Widget getWidgets() {
    if (type) {
      return Text("点击 Alert");
    } else {
      return CupertinoAlertDialog(
        title: Text("我是标题"),
        content: Text("我是content"),
        actions: <Widget>[
          ListTile(
            leading: Icon(Icons.image),
            title: Text("按钮1"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("按钮2"),
          ),
        ],
      );
    }
  }
}
