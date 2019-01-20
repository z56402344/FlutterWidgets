import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        //点击事件
      },
      color: Colors.blue[400],
      child: new Text('RaisedButton', style: new TextStyle(color: Colors.white)),
    );
  }
}
