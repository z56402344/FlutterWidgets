import 'package:flutter/material.dart';
import '../../../common/Ikey.dart';
import 'dart:ui';

class Demo04 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: window.physicalSize.width,
        height: 200,
        child: Image.asset(
          'images/ic_logo.png',
          width: 100,
          height: 100,
          repeat: ImageRepeat.repeat,
        ),
      );
  }

}
