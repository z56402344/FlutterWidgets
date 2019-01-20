import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
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
  ItemBean(name: 'TextField', asset: Icons.branding_watermark,desc:"文本输入框"),
  ItemBean(name: 'Checkbox', asset: Icons.dns,desc:"复选框，允许用户从一组中选择多个选项"),
  ItemBean(name: 'Radio', asset: Icons.call_to_action,desc:"单选框，允许用户从一组中选择一个选项"),
  ItemBean(name: 'Switch', asset: Icons.image,desc:"On/off 用于切换一个单一状态"),
  ItemBean(name: 'Slider', asset: Icons.tablet,desc:"滑块，允许用户通过滑动滑块来从一系列值中选择"),
  ItemBean(name: 'Date & Time Pickers', asset: Icons.table_chart,desc:"日期&时间选择器"),
];

class InputAndSelectWidgetsIndex extends BasefulWidget {
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
        push(new TextFieldWidget());
        break;
      case 1:
        push(new CheckboxWidget());
        break;
      case 2:
        push(new RadioWidget());
        break;
      case 3:
        push(new SwitchWidget());
        break;
      case 4:
        push(new SliderWidget());
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