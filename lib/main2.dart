//import 'package:flutter/material.dart';
//import 'widget/swiper/index.dart';
//import 'util/screen.dart';
//import 'package:myapp/widget/basewidget/container/index.dart';
//import 'widget/basewidget/row/index.dart';
//import 'widget/basewidget/column/index.dart';
//import 'widget/basewidget/image/index.dart';
//import 'widget/basewidget/text/index.dart';
//import 'widget/basewidget/button/index.dart';
//import 'widget/basewidget/scaffold/index.dart';
//import 'widget/basewidget/appbar/index.dart';
//import 'package:myapp/widget/slivers/sliversHeader.dart';
//import 'package:myapp/widget/slivers/sliverAppBar.dart';
//import 'package:myapp/widget/slivers/sliverList.dart';
//import 'package:myapp/widget/slivers/sliverGrid.dart';
//
////void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(title: new Text("Flutter组件演示")),
//        body: new HomePage(),
//      ),
//    );
//  }
//}
//
////主页要展示的内容
//class HomePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => new GridViewState();
//}
//
//class GridViewState extends State {
//  var icons = [
//    Icons.tablet,
//    Icons.tablet,
//    Icons.featured_video,
//    Icons.view_array,
//    Icons.view_agenda,
//    Icons.image,
//    Icons.text_fields,
//    Icons.crop_7_5,
//    Icons.tablet,
//    Icons.print
//  ];
//  var iconNames = [
//    "swiper",
//    "屏幕参数",
//    "Container",
//    "Row",
//    "Column",
//    "Image",
//    "Text",
//    "Button",
//    "Scaffold",
//    "AppBar",
//    "Scaffold",
//    "Scaffold",
//
//  ];
//
//  @override
//  Widget build(BuildContext context) => new GridView.count(
//      primary: false,
//      padding: const EdgeInsets.all(1.0),
//      mainAxisSpacing: 1.0,
//      //竖向间距
//      crossAxisCount: 3,
//      //横向Item的个数
//      crossAxisSpacing: 1.0,
//      //横向间距
//      children: buildGridTileList(icons.length));
//
//  List<Widget> buildGridTileList(int length) {
//    List<Widget> widgetList = new List();
//    for (int i = 0; i < length; i++) {
//      print(i);
//      widgetList.add(getItemWidget(i));
//    }
//    return widgetList;
//  }
//
//  Widget getItemWidget(int i) {
//    //BoxFit 可设置展示图片时 的填充方式
//    return new GestureDetector(
//        onTap: () {
//          //item点击事件处理
//          print("item点击=$i"); //打印
//          gotoPage(i);
//        },
//        child: new Container(
//          color: const Color(0xffdddddd),
//          alignment: Alignment.center, //居中
//          child: new Column(
//              children: <Widget>[
//                Icon(icons[i]),
//                Text(
//                  iconNames[i],
//                  style: new TextStyle(color: Color(0xff000000)),
//                ),
//              ],
//              //Column 居中
//              mainAxisAlignment: MainAxisAlignment.center),
//        ));
//  }
//
//  //跳转方法
//  void gotoPage(int i) {
//    switch (i) {
//      case 0:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new SwiperIndex();
//        }));
//        break;
//      case 1:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ScreenParameter();
//        }));
//        break;
//      case 2:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ContainerWidget();
//        }));
//        break;
//      case 3:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new RowWidget();
//        }));
//        break;
//      case 4:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ColumnWidget();
//        }));
//        break;
//      case 5:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ImageWidget();
//        }));
//        break;
//      case 6:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new TextWidget();
//        }));
//        break;
//      case 7:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ButtonWidget();
//        }));
//        break;
//      case 8:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new ScaffoldWidget();
//        }));
//        break;
//      case 9:
//        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
//          return new SliverGridPage();
//        }));
//        break;
//    }
//  }
//}
