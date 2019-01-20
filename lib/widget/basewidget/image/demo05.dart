import 'package:flutter/material.dart';
import '../../../common/Ikey.dart';

class Demo05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = 350;
    double h = 250;
    return Column(
      children: <Widget>[
        Image.asset(
          'images/food01.jpeg',
          width: w,
          height: h,
          fit: BoxFit.contain,
          centerSlice: new Rect.fromCircle(
              center: const Offset(50.0, 50.0), radius: 10.0),
        ),
        Image.asset(
          'images/food01.jpeg',
          width: w,
          height: h,
          fit: BoxFit.contain,
          centerSlice: new Rect.fromCircle(
              center: const Offset(50.0, 50.0), radius: 300.0),
        )
      ],
    );
  }
}
