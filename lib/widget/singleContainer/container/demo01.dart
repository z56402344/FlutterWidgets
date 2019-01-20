import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color(0xFF00FF00),
      width: 48.0,
      height: 48.0,
      child: Center(//居中控件
        child: Text("widget"),
      ),
    );
  }

}
