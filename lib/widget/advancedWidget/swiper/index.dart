import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';

import 'swiper01.dart';
import 'swiper02.dart';
import 'swiper03.dart';
import 'swiper04.dart';
import 'swiper05.dart';
import 'dart:ui';
import 'package:flutter_markdown/flutter_markdown.dart';

const String _Text0 =
"""### **描述**
> Siwiper “轮播图”
- 一个非常常用的控件，引导页、首页广告都会选用该控件。
- flutter最强大的siwiper, 多种布局方式，无限轮播，Android和IOS双端适配.。
""";

const String _Text1 =
"""### **Package**
> flutter_swiper: ^1.0.6
""";

const String _Text2 =
"""### **基本属性**
> 参数->默认值->描述
- scrollDirection->Axis.horizontal->滚动方向
- loop->true->无限轮播模式开关
- index->0->初始的时候下标位置
- autoplay->false->自动播放开关.
- autoplayDely->3000->自动播放延迟毫秒数.
- autoplayDiableOnInteraction->true->当用户拖拽的时候，是否停止自动播放.
- onIndexChanged	void onIndexChanged(int index)	当用户手动拖拽或者自动播放引起下标改变的时候调用
- onTap	void onTap(int index)	当用户点击某个轮播的时候调用
- duration	300.0	动画时间，单位是毫秒
- pagination	null	设置 new SwiperPagination() 展示默认分页指示器
- control	null	设置 new SwiperControl() 展示默认分页按钮
""";

class SwiperIndex extends BasefulWidget {

  var names = ["普通轮播图", "缩放轮播图", "卡片式轮播图", "堆栈式轮播图", "自定义半圆式轮播图"];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: Text('swiper组件')),
        body: new SingleChildScrollView(
          child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(height: 20.0),// 间距
//                SizedBox(height: 200,child: MarkdownBody(data: _Text2)),
//                SizedBox(height: 20.0),// 间距
                SizedBox(
                  height: 500,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: names.length, // item 的个数
                    separatorBuilder: (BuildContext context, int index) => Divider(height:1.0,color: Colors.blue),  // 添加分割线
                    itemBuilder: buildItem,
                  ),
                )
              ],
          ),
        ) ,
//        body: new ListView.separated(itemCount: names.length, itemBuilder: buildItem),
      ),
    );
  }

  //ListView的Item
  Widget buildItem(BuildContext context, int i) {
    //设置字体样式
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);

    return ListTile(
      title:  Text(names[i],style: textStyle), // item 标题
      leading: Icon(Icons.tablet), // item 前置图标
//    subtitle: Text("subtitle $index"), // item 副标题
      trailing: Icon(Icons.keyboard_arrow_right),// item 后置图标
      isThreeLine:false,  // item 是否三行显示
      dense:true, // item 直观感受是整体大小
      contentPadding: EdgeInsets.all(10.0),// item 内容内边距
      enabled:true,
      onTap:(){
        // item onTap 点击事件
        gotoPage(i);
        print('点击:${i}');
       },
      onLongPress:(){print('长按:${i}');},// item onLongPress 长按事件
      selected:false,     // item 是否选中状态
    );
  }

  //跳转方法
  void gotoPage(int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return new SwiperNormalPage();
        }));
        break;
      case 1:
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return new SwiperScalePage();
        }));
        break;
      case 2:
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return new SwiperStackNormalPage();
        }));
        break;
      case 3:
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return new SwiperCardPage();
        }));
        break;
      case 4:
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return new SwiperPage();
        }));
        break;
    }
  }
}
