import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';


class Shop {
  final String name;
  final int number;
  final String type;
  final double price;
  bool selected = false; //默认为未选中
  Shop(
      this.name,
      this.number,
      this.type,
      this.price,
      );
}

class MyTable extends DataTableSource {
  List _shops = [
    Shop('小米6x', 100, '手机', 1699.0),
    Shop('华为P20', 50, '手机', 4999.0),
    Shop('华硕a61', 50, '电脑', 5700.0),
    Shop('iphone7plus耳机', 9999, '耳机', 60.0),
    Shop('iphone7plus256g', 1, '手机', 4760.0),
    Shop('金士顿8g内存条', 66, '内存条', 399.0),
    Shop('西门子洗衣机9.0kg', 890, '家电', 10399.0),
    Shop('三星66寸液晶智能电视', 800, '家电', 20389.0),
  ];

  int _selectCount = 0; //当前选中的行数
  bool _isRowCountApproximate = false;//行数确定

  @override
  DataRow getRow(int index) {
    //根据索引获取内容行
    if (index >= _shops.length || index < 0) throw FlutterError('兄弟，取错数据了吧');
    //如果索引不在商品列表里面，抛出一个异常
    final Shop shop = _shops[index];
    return DataRow.byIndex(
        cells: [
          DataCell(Text(shop.name)),
          DataCell(Text('${shop.price}')),
          DataCell(Text('${shop.number}')),
          DataCell(Text(shop.type)),
        ],
        selected: shop.selected,
        index: index,
        onSelectChanged: (isSelected) {
          selectOne(index, isSelected);
        });
  }

  @override //是否行数不确定
  bool get isRowCountApproximate => _isRowCountApproximate;

  @override //有多少行
  int get rowCount => _shops.length;

  @override //选中的行数
  int get selectedRowCount => _selectCount;

  //选中单个
  void selectOne(int index,bool isSelected){
    Shop shop=_shops[index];
    if (shop.selected != isSelected) {
      //如果选中就选中数量加一，否则减一
      _selectCount = _selectCount += isSelected ? 1 : -1;
      shop.selected = isSelected;
      //更新
      notifyListeners();
    }
  }
  //选中全部
  void selectAll(bool checked) {
    for (Shop _shop in _shops) {
      _shop.selected = checked;
    }
    _selectCount = checked ? _shops.length : 0;
    notifyListeners(); //通知监听器去刷新
  }

  //排序,
//  void _sort(Comparable getField(Shop shop),bool b){
//    _shops.sort((Shop s1,Shop s2){
//      if(!b){//两个项进行交换
//        final Shop temp=s1;
//        s1=s2;
//        s2=temp;
//      }
//      final Comparable s1Value=getField(s1);
//      final Comparable s2Value=getField(s2);
//      return Comparable.compare(s1Value, s2Value);
//    });
//    notifyListeners();
//  }
}

class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return new Row(
      // <Widget> is the type of items in the list.
      children: <Widget>[
        new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null, // null disables the button
        ),
        // Expanded expands its child to fill the available space.
        new Expanded(
          child: Text("长按左边或者右边图标会有 tooltip的提示"),
        ),
        new IconButton(
          icon: new Icon(Icons.search),
          tooltip: 'Search',
          onPressed: null,
        ),
      ],
    );
  }
}
