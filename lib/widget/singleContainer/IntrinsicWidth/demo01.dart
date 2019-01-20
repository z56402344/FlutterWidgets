import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new IntrinsicWidth(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            color: Colors.red,
            width: 50.0,
            height: 50.0,
          ),
          new Container(color: Colors.yellow, height: 50.0),
          new Container(color: Colors.blue, height: 50.0),
        ],
      ),
    );
  }
}
