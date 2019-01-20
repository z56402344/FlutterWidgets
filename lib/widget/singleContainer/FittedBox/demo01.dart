import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: new FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        child: new Container(
          color: Colors.red,
          child: new Text("FittedBox"),
        ),
      ),
    );
  }

}
