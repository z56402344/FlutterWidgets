import 'package:flutter/material.dart';

class Demo03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnDropdownButton();
  }
}

class _LearnDropdownButton extends State<Demo03> {

  var value;

  List<DropdownMenuItem> getListData() {
    List<DropdownMenuItem> items = new List();
    DropdownMenuItem dropdownMenuItem1 = new DropdownMenuItem(
      child: new Text('1'),
      value: '1',
    );
    items.add(dropdownMenuItem1);
    DropdownMenuItem dropdownMenuItem2 = new DropdownMenuItem(
      child: new Text('2'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    DropdownMenuItem dropdownMenuItem3 = new DropdownMenuItem(
      child: new Text('3'),
      value: '3',
    );
    items.add(dropdownMenuItem3);
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new DropdownButton(
        items: getListData(),
        hint: new Text('下拉选择你想要的数据'),
        //当没有默认值的时候可以设置的提示
        value: value,
        //下拉菜单选择完之后显示给用户的值
        onChanged: (T) {
          //下拉菜单item点击之后的回调
          setState(() {
            value = T;
          });
        },
        elevation: 24,//设置阴影的高度
        style: new TextStyle(//设置文本框里面文字的样式
            color: Colors.red),
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
        iconSize: 30.0, //设置三角标icon的大小
      ),
    );
  }
}
