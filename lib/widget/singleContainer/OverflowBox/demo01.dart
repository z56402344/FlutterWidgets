import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 100.0,
      height: 100.0,
      padding: const EdgeInsets.all(25.0),
      child: OverflowBox(
        alignment: Alignment.topLeft,
        maxWidth: 150.0,
        maxHeight: 200.0,
        child: Container(
          color: Color(0x33FF00FF),
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }

}
