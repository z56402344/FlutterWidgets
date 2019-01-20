import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        RaisedButton(
//          child: Text("点击显示loading"),
//        ),
        CupertinoActivityIndicator(),
      ],
    );
  }

}
