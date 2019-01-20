import 'package:flutter/material.dart';
import '../../../common/Ikey.dart';


class Demo03 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //color & colorBlendMode
    double w = 150;
    double h = 150;
    return new Column(
      children: <Widget>[
        Image.asset('images/food01.jpeg',width: w,height: h,color: Colors.greenAccent, colorBlendMode: BlendMode.colorBurn),
        Text("color: Colors.greenAccent\ncolorBlendMode: BlendMode.colorBurn"),
        SizedBox(height: 10.0), // 间距
        Image.asset('images/food01.jpeg',width: w,height: h,color: Colors.greenAccent, colorBlendMode: BlendMode.exclusion),
        Text("color: Colors.greenAccent\ncolorBlendMode: BlendMode.exclusion"),
        SizedBox(height: 10.0),
        Image.asset('images/food01.jpeg',width: w,height: h,color: Colors.greenAccent, colorBlendMode: BlendMode.multiply),
        Text("color: Colors.greenAccent\ncolorBlendMode: BlendMode.multiply"),
        SizedBox(height: 10.0),
      ],
    );
  }

}
