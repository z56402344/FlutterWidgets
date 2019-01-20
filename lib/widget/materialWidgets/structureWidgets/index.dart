import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/widget/basewidget/button/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/BottomNavigationBar/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/Drawer/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/MaterialApp/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/TabBar/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/appbar/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/scaffold/index.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


const String title = "Material Widget";

//Material控件
List<ItemBean> _materialItem = [
  ItemBean(name: 'Scaffold', asset: Icons.branding_watermark,desc:"Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API"),
  ItemBean(name: 'Appbar', asset: Icons.dns,desc:"一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成"),
  ItemBean(name: 'BottomNavigationBar', asset: Icons.call_to_action,desc:"底部导航条，可以很容易地在tap之间切换和浏览顶级视图"),
  ItemBean(name: 'TabBar+TabBarView', asset: Icons.table_chart,desc:"一个显示水平选项卡的Material Design widget"),
  ItemBean(name: 'MaterialApp', asset: Icons.tablet,desc:"一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget"),
  ItemBean(name: 'WidgetsApp', asset: Icons.tablet,desc:"一个方便的类，它封装了应用程序通常需要的一些widget"),
  ItemBean(name: 'Drawer', asset: Icons.assignment,desc:"从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板"),
];

class StructureIndex extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(title),),
      body: new ListView(
        children: _buildBaseList(_materialItem.length),
      )
    );
  }

  List<Widget> _buildBaseList(int count) {
    return new List.generate(count, (int index) => _buildIBaseItemGrid(index));
  }

  Widget _buildIBaseItemGrid(int index) {
    ItemBean product = _materialItem[index];
    return new ListTile(
      leading: Icon(product.asset),
      title: new Text(product.name),
      subtitle: new Text(product.desc),
      onTap: () =>  gotoMaterialPage(index),
    );
  }

  //Material控件跳转逻辑
  void gotoMaterialPage(int i) {
    switch (i) {
      case 0:
        push(new ScaffoldWidget());
        break;
      case 1:
        push(new AppBarWidget());
        break;
      case 2:
        push(new BottomNavigationBarWidget());
        break;
      case 3:
        push(new TabBarWidget());
        break;
      case 4:
        push(new MaterialAppWidget());
        break;
      case 5:
//        push(new WidgetsAppWidget());
        break;
      case 6:
        push(new DrawerBarWidget());
        break;
      case 7:
        push(new ButtonWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}