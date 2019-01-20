import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new AspectRatio(
        aspectRatio: 1.5,
        child: new Container(
          color: Colors.red,
        ),
      ),
    );
  }

}
