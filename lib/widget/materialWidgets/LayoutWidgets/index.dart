import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/widget/basewidget/image/index.dart';
import 'package:myapp/widget/materialWidgets/LayoutWidgets/Divider/index.dart';
import 'package:myapp/widget/materialWidgets/LayoutWidgets/ListTile/index.dart';
import 'package:myapp/widget/materialWidgets/LayoutWidgets/Stepper/index.dart';
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
import 'package:myapp/widget/materialWidgets/showWidgets/Card/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Chip/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/CircularProgressIndicator/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Icon/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/LinearProgressIndicator/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Tooltip/index.dart';
import '../../../common/BasefulWidget.dart';


const String title = "Button Widget";

//Material控件
List<ItemBean> _materialItem = [
  ItemBean(name: 'ListTile', asset: Icons.branding_watermark,desc:"一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标"),
  ItemBean(name: 'Stepper', asset: Icons.dns,desc:"一个Material Design 步骤指示器，显示一系列步骤的过程"),
  ItemBean(name: 'Divider', asset: Icons.call_to_action,desc:"一个逻辑1像素厚的水平分割线，两边都有填充"),
];

class LayoutidgetsIndex extends BasefulWidget {
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
        push(new ListTileWidget());
        break;
      case 1:
        push(new StepperWidget());
        break;
      case 2:
        push(new DividerWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}