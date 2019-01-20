import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        child: Text("点击我"),
        onPressed: ((){
          final snackBar = new SnackBar(content: new Text("我是 SnackBar"));
          Scaffold.of(context).showSnackBar(snackBar);
        }),
    );
  }

}
