import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Text("CupertinoButton"),
        color: Colors.red,
//        disabledColor: Colors.yellow,
        onPressed: ((){
          //点击事件逻辑
          print("点击事件逻辑");
        }),
    );
  }

}
