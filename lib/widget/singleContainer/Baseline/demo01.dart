import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Text(
                'BaseLine',
                style: new TextStyle(
                  fontSize: 20.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              ),
            ),
            new Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: new Text(
                'BaseLine',
                style: new TextStyle(
                  fontSize: 35.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
