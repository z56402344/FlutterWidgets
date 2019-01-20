import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';


class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('Button01',
              style: new TextStyle(color: Colors.white)),
        ),
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('Button02',
              style: new TextStyle(color: Colors.white)),
        ),
        RaisedButton(
          onPressed: () {
            //点击事件
          },
          color: Colors.blue[400],
          child: new Text('Button03',
              style: new TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
