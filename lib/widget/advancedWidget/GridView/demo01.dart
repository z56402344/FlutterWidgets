import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:myapp/widget/advancedWidget/GridView/demo02.dart';
import 'package:myapp/widget/advancedWidget/GridView/demo03.dart';
import 'package:myapp/widget/advancedWidget/GridView/demo04.dart';


class Demo01 extends BasefulWidget{

  var itemNames = ["GridView","GridView.count","GridView.extent"];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      scrollDirection:  Axis.vertical,
      itemBuilder: buildItem,
      itemCount:itemNames.length ,
    );
  }

  //自定义ItemLayout
  Widget customItem(BuildContext context, int i){

  }

  //系统体统的模板Layout
  Widget buildItem(BuildContext context, int i) {
    //设置字体样式
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);

    return ListTile(
      title:  Text(itemNames[i],style: textStyle), // item 标题
      leading: Image.asset(
        "images/food01.jpeg",
        height: 50,
        width: 70,
      ), // item 前置图标
//    subtitle: Text("subtitle $index"), // item 副标题
      trailing: Icon(Icons.keyboard_arrow_right),// item 后置图标
      isThreeLine:false,  // item 是否三行显示
      dense:true, // item 直观感受是整体大小
      contentPadding: EdgeInsets.all(10.0),// item 内容内边距
      enabled:true,
      onTap:(){
        // item onTap 点击事件
        print('点击:${i}');
        switch(i){
          case 0:
            gotoPage(new Demo02Widget());
            break;
          case 1:
            gotoPage(new Demo03Widget());
            break;
          case 2:
            gotoPage(new Demo04Widget());
            break;
        }
      },
      onLongPress:(){print('长按:${i}');},// item onLongPress 长按事件
      selected:false,     // item 是否选中状态
    );
  }

  Widget gotoPage(Widget widget){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return widget;
    }));
  }

}



