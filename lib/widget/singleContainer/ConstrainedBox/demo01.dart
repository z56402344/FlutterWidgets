import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const Card(child: Text('Hello World!')),
      ),
    );
  }
}
