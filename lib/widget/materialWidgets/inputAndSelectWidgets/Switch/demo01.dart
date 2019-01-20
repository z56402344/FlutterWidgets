import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  bool bval = false;

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Switch(
          value: bval,
          onChanged: (bool val) {
            method1(val);
          },
        ),
      ],
    );

  }

  void method1(value) {
    state.setState(() {
      bval = value;
    });
  }
}
