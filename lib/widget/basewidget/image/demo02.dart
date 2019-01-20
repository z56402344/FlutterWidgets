import 'package:flutter/material.dart';


class Demo02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //fit属性
    double w = 150;
    double h = 150;
    return new Column(
      children: <Widget>[
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.fill),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.fill\n全图显示，显示可能拉伸，充满"),
        SizedBox(height: 10.0), // 间距
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.contain),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.contain\n全图显示，显示原比例，不需充满"),
        SizedBox(height: 10.0), // 间距
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.cover),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.cover\n显示可能拉伸，可能裁剪，充满"),
        SizedBox(height: 10.0), // 间距
        Container(
          child:Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.fitWidth),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.fitWidth\n显示可能拉伸，可能裁剪，宽度充满"),
        SizedBox(height: 10.0), // 间距
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.fitHeight),
          color: const Color(0xFFffff00),
        ),

        Text("fit: BoxFit.fitHeight\n显示可能拉伸，可能裁剪，高度充满"),
        SizedBox(height: 10.0), // 间距
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.scaleDown),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.scaleDown\n效果和contain差不多,但是此属性不\n允许显示超过源图片大小，可小不可大"),
        SizedBox(height: 10.0), // 间距
        Container(
          child: Image.asset('images/food01.jpeg',width: w,height: h,fit: BoxFit.none),
          color: const Color(0xFFffff00),
        ),
        Text("fit: BoxFit.none\n无任何属性"),
      ],
    );

  }

}
