import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/ButtonBar/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/FlatButton/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/FloatingActionButton/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/IconButton/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/PopupMenuButton/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/RaiseButton/index.dart';
import '../../../common/BasefulWidget.dart';


const String title = "Button Widget";

//Material控件
List<ItemBean> _materialItem = [
  ItemBean(name: 'RaisedButton', asset: Icons.branding_watermark,desc:"Material Design中的button， 一个凸起的材质矩形按钮"),
  ItemBean(name: 'FloatingActionButton', asset: Icons.dns,desc:"一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段"),
  ItemBean(name: 'FlatButton', asset: Icons.call_to_action,desc:"一个扁平的Material按钮"),
  ItemBean(name: 'IconButton', asset: Icons.image,desc:"一个Material图标按钮，点击时会有水波动画"),
  ItemBean(name: 'PopupMenuButton', asset: Icons.tablet,desc:"当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表"),
  ItemBean(name: 'ButtonBar', asset: Icons.table_chart,desc:"水平排列的按钮组"),
];

class ButtonIndex extends BasefulWidget {
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
        push(new RaiseButtonWidget());
        break;
      case 1:
        push(new FloatingActionButtonWidget());
        break;
      case 2:
        push(new FlatButtonWidget());
        break;
      case 3:
        push(new IconButtonWidget());
        break;
      case 4:
        push(new PopupMenuButtonWidget());
        break;
      case 5:
        push(new ButtonBarWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}