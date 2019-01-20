import 'package:flutter/material.dart';
import '../../../common/Ikey.dart';

class Demo06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Image image = new Image.asset(
      'images/food01.jpeg',
      fit: BoxFit.scaleDown,
      matchTextDirection: true,
    );
    return new Column(
      children: <Widget>[
        new Directionality(
          textDirection: TextDirection.ltr,
          child: image,
        ),
        new Directionality(
          textDirection: TextDirection.rtl,
          child: image,
        ),
      ],
    );
  }

}
