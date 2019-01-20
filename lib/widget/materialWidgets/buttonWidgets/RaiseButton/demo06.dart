import 'package:flutter/material.dart';
import 'demo01.dart';

class Demo06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("RaisedButton"),
      onPressed: (){},
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.blue,
      disabledTextColor: Colors.red,
      color: Color(0xFFFFFFFF),
      disabledColor: Colors.white,
      highlightColor: Colors.grey,
      // 按下的背景色
      splashColor: Colors.green,
      // 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
      elevation: 10,
      highlightElevation: 10,
      disabledElevation: 10,
      padding: EdgeInsets.all(10),
      // RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(
              color: Color(0xFFFFF00F), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: Duration(seconds: 1),
//      minWidth: 200,
//      height: 50,
    );
  }
}
