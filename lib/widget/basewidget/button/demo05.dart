import 'package:flutter/material.dart';
import 'demo01.dart';

class Demo05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            child: Demo01(),
          )
      )
    );

  }
}
