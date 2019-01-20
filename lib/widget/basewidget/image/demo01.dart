import 'package:flutter/material.dart';
import '../../../common/Ikey.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double w = 150;
    double h = 150;
    return Column(
      children: <Widget>[
        Image(image: new NetworkImage(urls[0]),height: h,width: w,),
        //资源文件加载方式
        Image.asset('images/food01.jpeg',height: h,width: w),
        //网络加载方式
        Image.network(urls[0],height: h,width: w),
        //文件加载方式
//        Image.file(new File("/Users/gs/Downloads/1.jpeg"));
        // Uint8List图片
//        Image.memory(bytes);
      ],
    );//使用ImageProvider加载图片
  }

}
