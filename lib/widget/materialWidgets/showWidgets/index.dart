import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'package:myapp/widget/basewidget/image/index.dart';
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
  ItemBean(name: 'Image', asset: Icons.branding_watermark,desc:"一个显示图片的widget"),
  ItemBean(name: 'Icon', asset: Icons.dns,desc:"A Material Design icon"),
  ItemBean(name: 'Chip', asset: Icons.call_to_action,desc:"标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人"),
  ItemBean(name: 'Tooltip', asset: Icons.image,desc:"一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签"),
  ItemBean(name: 'DataTable', asset: Icons.tablet,desc:"数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件"),
  ItemBean(name: 'Card', asset: Icons.tablet,desc:"一个 Material Design 卡片。拥有一个圆角和阴影"),
  ItemBean(name: 'LinearProgressIndicator', asset: Icons.tablet,desc:"一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator"),
  ItemBean(name: 'CircularProgressIndicatorWidget', asset: Icons.cached,desc:"Material Design风格的循环进度条，旋转以指示应用程序正忙。比如Http异步请求的时候代表正在获取的状态显示"),
];

class ShowWidgetsIndex extends BasefulWidget {
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
        push(new ImageWidget());
        break;
      case 1:
        push(new IconWidget());
        break;
      case 2:
        push(new ChipWidget());
        break;
      case 3:
        push(new TooltipWidget());
        break;
      case 4:
//        push(new DataTableWidget());
        break;
      case 5:
        push(new CardWidget());
        break;
      case 6:
        push(new LinearProgressIndicatorWidget());
        break;
      case 7:
        push(new CircularProgressIndicatorWidget());
        break;
    }
  }

  void push(StatefulWidget statefulWidget) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return statefulWidget;
    }));
  }

}