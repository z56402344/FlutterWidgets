import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/AlertDialog/index.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/BottomSheet/index.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/ExpansionPanel/index.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/SimpleDialog/index.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/SnackBar/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/Checkbox/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/Radio/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/Slider/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/Switch/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/TextField/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/Time_Pickers/index.dart';
import '../../../common/BasefulWidget.dart';


const String title = "Button Widget";

//Material控件
List<ItemBean> _materialItem = [
  ItemBean(name: 'SimpleDialog', asset: Icons.branding_watermark,desc:"简单对话框可以显示附加的提示或操作"),
  ItemBean(name: 'AlertDialog', asset: Icons.dns,desc:"一个会中断用户操作的对话款，需要用户确认"),
  ItemBean(name: 'BottomSheet', asset: Icons.call_to_action,desc:"BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出"),
  ItemBean(name: 'ExpansionPanel', asset: Icons.image,desc:"Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component."),
  ItemBean(name: 'SnackBar', asset: Icons.tablet,desc:"具有可选操作的轻量级消息提示，在屏幕的底部显示。"),
];

class AlertWidgetsIndex extends BasefulWidget {
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
        push(new SimpleDialogWidget());
        break;
      case 1:
        push(new AlertDialogWidget());
        break;
      case 2:
        push(new BottomSheetWidget());
        break;
      case 3:
        push(new ExpansionPanelWidget());
        break;
      case 4:
        push(new SnackBarWidget());
        break;
      case 5:
        push(new TimePickersWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}