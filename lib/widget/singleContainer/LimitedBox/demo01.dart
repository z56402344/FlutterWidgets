import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 100.0,
          height: 50,
        ),
        LimitedBox(
          maxWidth: 100.0,
          child: Container(
            color: Colors.blue,
            width: 250.0,
            height: 50,
          ),
        ),
      ],
    );
  }

}
