import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  int _cupertinoSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        CupertinoSlider(
          value: _cupertinoSliderValue.toDouble(),
          min: 1.0,
          max: 100.0,
          divisions: 10,
          onChanged: (double newValue) {
            state.setState(() {
              _cupertinoSliderValue = newValue.round();
            });
          },
        )
      ],
    );
  }
}
