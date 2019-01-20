import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 200.0,
        height: 200.0,
        child: Container(
          color: Colors.red,
          width: 100.0,
          height: 300.0,
        ),
      ),
    );
  }

}
