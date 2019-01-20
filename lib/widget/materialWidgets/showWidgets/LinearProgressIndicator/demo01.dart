import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  int maximumEmergy = 100;
  int maximumHunger = 100;
  int maximumMood = 100;
  int currentEmergy = 10;
  int currentHunger = 10;
  int currentMood = 10;

  // 获取进度条描述文本
  Align _getNameText(BuildContext context, String text) {
    return new Align(
        alignment: FractionalOffset.topLeft,
        child: new Text(
            text,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.black,
              height: 1.5,
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.fromLTRB(17.0, 0.0, 17.0, 10.0),
        child: new Column(
            children: <Widget> [
              _getNameText(context, '能量（$currentEmergy/$maximumEmergy）'),
              new LinearProgressIndicator(value: currentEmergy/maximumEmergy),
              _getNameText(context, '饥饿（$currentHunger/$maximumHunger）'),
              new LinearProgressIndicator(value: currentHunger/maximumHunger),
              _getNameText(context, '心情（$currentMood/$maximumMood）'),
              new LinearProgressIndicator(value: currentMood/maximumMood),
            ]
        )
    );
  }
}
