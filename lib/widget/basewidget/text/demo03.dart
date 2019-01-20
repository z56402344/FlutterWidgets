import 'package:flutter/material.dart';


class Demo03 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new Text(
            '红色+黑色删除线+25号',
            style: new TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            '橙色+下划线+24号',
            style: new TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            '虚线上划线+23号+倾斜',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            'serif字体+24号',
            style: new TextStyle(
              fontFamily: 'serif',
              fontSize: 26.0,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            'monospace字体+24号+加粗',
            style: new TextStyle(
              fontFamily: 'monospace',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            '天蓝色+25号+2行跨度',
            style: new TextStyle(
              color: const Color(0xff4a86e8),
              fontSize: 25.0,
              height: 2.0,
            ),
          ),
          SizedBox(height: 20),
          new Text(
            '24号+2个字母间隔',
            style: new TextStyle(
              fontSize: 24.0,
              letterSpacing: 2.0,
            ),
          ),
        ]
    );
  }

}