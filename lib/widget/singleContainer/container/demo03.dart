import 'package:flutter/material.dart';
import 'demo01.dart';
import 'dart:ui';

class Demo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Demo01(),
              Demo01(),
              Demo01(),
              Demo01(),
              Demo01(),
            ],
          ),
          Demo01(),
          Demo01(),
        ],
      ),
    );
  }
}
