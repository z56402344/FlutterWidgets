import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.topRight,
      width: 200.0,
      height: 200.0,
      padding: EdgeInsets.all(5.0),
      child: SizedOverflowBox(
        size: Size(100.0, 200.0),
        child: Container(
          color: Colors.red,
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}
