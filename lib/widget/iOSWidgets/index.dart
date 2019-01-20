import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoActivityIndicator/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoAlertDialog/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoButton/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoDialog/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoDialogAction/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoFullscreenDialogTransition/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoNavigationBar/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoPageScaffold/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoPageTransition/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoSlider/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoSwitch/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoTabBar/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoTabScaffold/index.dart';
import 'package:myapp/widget/iOSWidgets/CupertinoTabView/index.dart';


const String title = "Button Widget";

//iOS Widget
List<ItemBean> _iOSlItem = [
  ItemBean(name: 'CupertinoActivityIndicator', asset: Icons.dashboard,desc:"一个iOS风格的loading指示器。显示一个圆形的转圈菊花"),
  ItemBean(name: 'CupertinoAlertDialog', asset: Icons.dashboard,desc:"iOS风格的alert dialog."),
  ItemBean(name: 'CupertinoButton', asset: Icons.dashboard,desc:"iOS风格的button"),
  ItemBean(name: 'CupertinoDialog', asset: Icons.dashboard,desc:"iOS风格的对话框"),
  ItemBean(name: 'CupertinoDialogAction', asset: Icons.dashboard,desc:"通常用于CupertinoAlertDialog的一个button"),
  ItemBean(name: 'CupertinoSlider', asset: Icons.dashboard,desc:"从一个范围中选一个值"),
  ItemBean(name: 'CupertinoSwitch', asset: Icons.dashboard,desc:"iOS风格的开关. 用于单一状态的开/关"),
  ItemBean(name: 'CupertinoPageTransition', asset: Icons.dashboard,desc:"提供iOS风格的页面过度动画"),
  ItemBean(name: 'CupertinoFullscreenDialogTransition', asset: Icons.dashboard,desc:"一个iOS风格的过渡，用于调用全屏对话框"),
  ItemBean(name: 'CupertinoNavigationBar', asset: Icons.dashboard,desc:"iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用"),
  ItemBean(name: 'CupertinoTabBar', asset: Icons.dashboard,desc:"iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用"),
  ItemBean(name: 'CupertinoPageScaffold', asset: Icons.dashboard,desc:"一个iOS风格的页面的基本布局结构。包含内容和导航栏"),
  ItemBean(name: 'CupertinoTabScaffold', asset: Icons.dashboard,desc:"标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上"),
  ItemBean(name: 'CupertinoTabView', asset: Icons.dashboard,desc:"支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用"),
];


class iOSWidgetsIndex extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(title),),
      body: new ListView(
        children: _buildBaseList(_iOSlItem.length),
      )
    );
  }

  List<Widget> _buildBaseList(int count) {
    return new List.generate(count, (int index) => _buildIBaseItemGrid(index));
  }

  Widget _buildIBaseItemGrid(int index) {
    ItemBean product = _iOSlItem[index];
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
        push(new CupertinoActivityIndicatorWidget());
        break;
      case 1:
        push(new CupertinoAlertDialogWidget());
        break;
      case 2:
        push(new CupertinoButtonWidget());
        break;
      case 3:
        push(new CupertinoDialogWidget());
        break;
      case 4:
        push(new CupertinoDialogActionWidget());
        break;
      case 5:
        push(new CupertinoSliderWidget());
        break;
      case 6:
        push(new CupertinoSwitchWidget());
        break;
      case 7:
        push(new CupertinoPageTransitionWidget());
        break;
      case 8:
        push(new CupertinoFullscreenDialogTransitionWidget());
        break;
      case 9:
        push(new CupertinoNavigationBarWidget());
        break;
      case 10:
        push(new CupertinoTabBarWidget());
        break;
      case 11:
        push(new CupertinoPageScaffoldWidget());
        break;
      case 12:
        push(new CupertinoTabScaffoldWidget());
        break;
      case 13:
        push(new CupertinoTabViewWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}