import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: const Card(
          color: const Color(0xFFffff00),
          child: Text('Hello World!')),
    );
  }

}
