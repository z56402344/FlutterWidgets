import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  int _act = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Text("我是第一条分割线，高度默认"),
          Divider(),
          Text("我是第二条分割线，高度20"),
          Divider(height: 20,),
          Text("我是第三条分割线，高度30"),
          Divider(height: 30,),
          Text("我是第四条分割线，高度30,红色"),
          Divider(height: 30,color:Colors.red),
        ],
    );
  }
}
