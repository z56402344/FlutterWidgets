import 'package:flutter/material.dart';
import 'demo01.dart';

class Demo04 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color(0xFF00FF00),
      width: 100.0,
      height: 100.0,
      child: Center(//居中控件
        child: new Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFFffff00),
          width: 80.0,
          height: 80.0,
          child: new Container(
            margin: const EdgeInsets.all(10.0),
            color: const Color(0xff00f0ff),
            width: 60.0,
            height: 60.0,
            child: new Container(
              margin: const EdgeInsets.all(10.0),
              color: const Color(0xFFffffff),
              width: 40.0,
              height: 40.0,
              child: Center(
                child: Text("widget",style: TextStyle(fontSize: 12)),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
