import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/bean/ItemBean.dart';
import 'dart:math' as math;
import 'package:myapp/util/screen.dart';

import 'package:myapp/widget/basewidget/image/index.dart';
import 'package:myapp/widget/basewidget/text/index.dart';
import 'package:myapp/widget/basewidget/button/index.dart';
import 'package:myapp/widget/iOSWidgets/index.dart';
import 'package:myapp/widget/materialWidgets/LayoutWidgets/index.dart';
import 'package:myapp/widget/materialWidgets/alertWidget/index.dart';
import 'package:myapp/widget/materialWidgets/buttonWidgets/index.dart';
import 'package:myapp/widget/materialWidgets/inputAndSelectWidgets/index.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/Drawer/index.dart';
import 'package:myapp/widget/materialWidgets/structureWidgets/index.dart';

import 'package:myapp/widget/singleContainer/container/index.dart';
import 'package:myapp/widget/singleContainer/padding/index.dart';
import 'package:myapp/widget/singleContainer/center/index.dart';
import 'package:myapp/widget/singleContainer/Align/index.dart';
import 'package:myapp/widget/singleContainer/FittedBox/index.dart';
import 'package:myapp/widget/singleContainer/AspectRatio/index.dart';
import 'package:myapp/widget/singleContainer/ConstrainedBox/index.dart';
import 'package:myapp/widget/singleContainer/Baseline/index.dart';
import 'package:myapp/widget/singleContainer/FractionallySizedBox/index.dart';
import 'package:myapp/widget/singleContainer/IntrinsicHeight/index.dart';
import 'package:myapp/widget/singleContainer/IntrinsicWidth/index.dart';
import 'package:myapp/widget/singleContainer/LimitedBox/index.dart';
import 'package:myapp/widget/singleContainer/Offstage/index.dart';
import 'package:myapp/widget/singleContainer/OverflowBox/index.dart';
import 'package:myapp/widget/singleContainer/SizedBox/index.dart';
import 'package:myapp/widget/singleContainer/SizedOverflowBox/index.dart';
import 'package:myapp/widget/singleContainer/Transform/index.dart';
import 'package:myapp/widget/singleContainer/CustomSingleChildLayout/index.dart';

import 'package:myapp/widget/multipleContainer/Row/index.dart';
import 'package:myapp/widget/multipleContainer/Column/index.dart';
import 'package:myapp/widget/multipleContainer/Stack/index.dart';
import 'package:myapp/widget/multipleContainer/IndexedStack/index.dart';
import 'package:myapp/widget/multipleContainer/Flow/index.dart';
import 'package:myapp/widget/multipleContainer/Table/index.dart';
import 'package:myapp/widget/multipleContainer/Wrap/index.dart';
import 'package:myapp/widget/multipleContainer/ListBody/index.dart';
import 'package:myapp/widget/multipleContainer/CustomMultiChildLayout/index.dart';
import 'package:myapp/widget/multipleContainer/LayoutBuilder/index.dart';

import 'package:myapp/widget/advancedWidget/ListView/index.dart';
import 'package:myapp/widget/advancedWidget/slivers/index.dart';
import 'package:myapp/widget/advancedWidget/swiper/index.dart';
import 'package:myapp/widget/advancedWidget/GridView/index.dart';


final int TYPE_SINGLE_CONTAINER = 1;
final int TYPE_MULTIPLE_CONTAINER = 2;
final int TYPE_MATERIAL_CONTAINER = 3;
final int TYPE_iOS_CONTAINER = 4;
final int TYPE_ADVICE_CONTAINER = 5;

final List<String> titleAssets = [
  'images/food01.jpeg',
  'images/food02.jpeg',
  'images/food03.jpeg',
  'images/food04.jpeg',
  'images/food05.jpeg',
  'images/food06.jpeg',
];

var headNames = ["基础控件", "单元素容器", "多元素容器", "Material Widgets", "iOS风格控件",  "进阶控件","Animation"];

//基础控件
final List<ItemBean> _baseItem = [
  ItemBean(name: 'Text', asset: Icons.text_fields),
  ItemBean(name: 'Button', asset: Icons.crop_7_5),
  ItemBean(name: 'Image', asset: Icons.image),
  ItemBean(name: '屏幕参数', asset: Icons.tablet),
];

//单控件容器
final List<ItemBean> _singleItem = [
  ItemBean(name: 'Container', asset: Icons.tablet),
  ItemBean(name: 'Padding', asset: Icons.tablet),
  ItemBean(name: 'Center', asset: Icons.laptop_chromebook),
  ItemBean(name: 'Align', asset: Icons.featured_video),
  ItemBean(name: 'FittedBox', asset: Icons.crop_7_5),
  ItemBean(name: 'AspectRatio', asset: Icons.view_agenda),
  ItemBean(name: 'ConstrainedBox', asset: Icons.tablet),
  ItemBean(name: 'Baseline', asset: Icons.text_fields),
  ItemBean(name: 'FractionallySizedBox', asset: Icons.add_to_photos),
  ItemBean(name: 'IntrinsicHeight', asset: Icons.view_array),
  ItemBean(name: 'IntrinsicWidth', asset: Icons.tablet),
  ItemBean(name: 'LimitedBox', asset: Icons.format_align_left),
  ItemBean(name: 'Offstage', asset: Icons.offline_bolt),
  ItemBean(name: 'OverflowBox', asset: Icons.tablet),
  ItemBean(name: 'SizedBox', asset: Icons.tablet),
  ItemBean(name: 'SizedOverflowBox', asset: Icons.tablet),
  ItemBean(name: 'Transform', asset: Icons.tablet),
  ItemBean(name: 'CustomSingleChildLayout', asset: Icons.tablet),
];

//多控件容器
final List<ItemBean> _multipleItem = [
  ItemBean(name: 'Row', asset: Icons.burst_mode),
  ItemBean(name: 'Column', asset: Icons.view_agenda),
  ItemBean(name: 'Stack', asset: Icons.branding_watermark),
  ItemBean(name: 'IndexedStack', asset: Icons.add_to_photos),
  ItemBean(name: 'Flow', asset: Icons.view_quilt),
  ItemBean(name: 'Table', asset: Icons.grid_on),
  ItemBean(name: 'Wrap', asset: Icons.view_array),
  ItemBean(name: 'ListBody', asset: Icons.dns),
  ItemBean(name: 'ListView', asset: Icons.format_align_left),
  ItemBean(name: 'CustomMultiChildLayout', asset: Icons.burst_mode),
  ItemBean(name: 'LayoutBuilder', asset: Icons.tablet),
];

//进阶控件
List<ItemBean> _advancedItem = [
  ItemBean(name: 'ListView', asset: Icons.format_align_left),
  ItemBean(name: 'GridView', asset: Icons.grid_on),
  ItemBean(name: 'Swiper', asset: Icons.print),
  ItemBean(name: 'Sliver', asset: Icons.view_agenda),
];

//Material控件
List<ItemBean> _materialItem = [
  ItemBean(name: '结构和导航类Widgets', asset: Icons.dashboard),
  ItemBean(name: 'Button类Widgets', asset: Icons.dashboard),
  ItemBean(name: '输入框和选择框', asset: Icons.dashboard),
  ItemBean(name: 'Alert、Panel', asset: Icons.dashboard),
  ItemBean(name: '展示类Widgets', asset: Icons.dashboard),
  ItemBean(name: '布局类Widgets', asset: Icons.dashboard),
];

//Material控件
List<ItemBean> _iOSlItem = [
  ItemBean(name: 'iOS 风格的Widget ', asset: Icons.dashboard),
];

final List<ItemBean> _products2 = []..addAll(_baseItem)..addAll(_baseItem);

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CollapsingState();
}

class _CollapsingState extends State<HomePage> {
  bool floating = true;
  bool pinned = false;
  bool snap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets 集合'),
        actions: <Widget>[
          _buildAction(),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildHeader(0),
          SliverGrid.count(
            crossAxisCount: 3,
            children: _buildBaseList(_baseItem.length),
          ),
          _buildHeader(1),
          SliverGrid(
            gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 3.0,
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildItemGrid2(TYPE_SINGLE_CONTAINER,index);
              },
              childCount: _singleItem.length,
            ),
          ),
          _buildHeader(2),
          SliverGrid(
            gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 3.0,
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildItemGrid2(TYPE_MULTIPLE_CONTAINER,index);
              },
              childCount: _multipleItem.length,
            ),
          ),
          _buildHeader(3),
          SliverGrid(
            gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 3.0,
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildItemGrid2(TYPE_MATERIAL_CONTAINER,index);
              },
              childCount: _materialItem.length,
            ),
          ),
          _buildHeader(4),
          SliverFixedExtentList(
            itemExtent: 75.0,
            delegate: SliverChildListDelegate(
              _buildAdvancedList(TYPE_iOS_CONTAINER,_iOSlItem.length),
            ),
          ),
          _buildHeader(5),
          SliverFixedExtentList(
            itemExtent: 75.0,
            delegate: SliverChildListDelegate(
              _buildAdvancedList(TYPE_ADVICE_CONTAINER,_advancedItem.length),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildAction() {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
          value: 0,
          child: Text('reset'),
        ),
        const PopupMenuItem<int>(
          value: 1,
          child: Text("Head不滞留顶部"),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Text('下拉时第一个Head优先展示'),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Text('Head滞留顶部'),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 1:
            setState(() {
              floating = false;
              snap = false;
              pinned = false;
            });
            break;
          case 1:
            setState(() {
              floating = true;
              snap = false;
              pinned = false;
            });
            break;
          case 2:
            setState(() {
              floating = true;
              snap = true;
              pinned = false;
            });
            break;
          case 3:
            setState(() {
              floating = false;
              snap = false;
              pinned = true;
            });
            break;
        }
      },
    );
  }

  SliverPersistentHeader _buildHeader(int index) {
    String asset = titleAssets[index];
    return SliverPersistentHeader(
      pinned: pinned,
      floating: floating,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 180.0,
        child: Container(
          decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.plus,
              image: DecorationImage(
                image: AssetImage(asset),
                fit: BoxFit.fill,
              ),
              color: Colors.white),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
            child: Container(
              child: Center(
                child: Text(
                  headNames[index],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xE5FFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBaseList(int count) {
    return new List.generate(count, (int index) => _buildIBaseItemGrid(index));
  }

  Widget _buildIBaseItemGrid(int index) {
    ItemBean product = _baseItem[index];
    return new GestureDetector(
      onTap: () {
        print("点击$index");
        gotoBasePage(index);
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  child: SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: Icon(product.asset),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(
                      product.name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildAdvancedList(int type,int count) {
    return new List.generate(
        count, (int index) => _buildAdvancedItemList(type,index));
  }

  Widget _buildAdvancedItemList(int type,int index) {
    ItemBean product = new ItemBean();
    if(type == TYPE_ADVICE_CONTAINER){
      product = _advancedItem[index];
    }else{
      product = _iOSlItem[index];
    }
    return GestureDetector(
      onTap: () {
        print("点击$index");
        if(type == TYPE_ADVICE_CONTAINER){
          gotoAdvancedPage(index);
        }else{
          gotoiOSPage(index);
        }
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: ClipRRect(
                    child: SizedBox(
                      width: 45.0,
                      height: 45.0,
                      child: Icon(product.asset),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemGrid2(int type, int index) {
    ItemBean product = new ItemBean();
    if(TYPE_SINGLE_CONTAINER == type){
      product =_singleItem[index];
    }else if(TYPE_MULTIPLE_CONTAINER == type){
      product = _multipleItem[index];
    }else if(TYPE_MATERIAL_CONTAINER == type){
      product = _materialItem[index];
    }
    return new GestureDetector(
      onTap: (){
        print("点击$index");
        if(TYPE_SINGLE_CONTAINER == type){
          gotoSingleContainerPage(index);
        }else if(TYPE_MULTIPLE_CONTAINER == type){
          gotoMultiplePage(index);
        }else if(TYPE_MATERIAL_CONTAINER == type){
          gotoMaterialPage(index);
        }
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ClipRRect(
                    child: SizedBox(
                        width: 30.0, height: 50.0, child: Icon(product.asset)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

  //基础控件跳转逻辑
  void gotoBasePage(int i) {
    switch (i) {
      case 0:
        push(new TextWidget());
        break;
      case 1:
        push(new ButtonWidget());
        break;
      case 2:
        push(new ImageWidget());
        break;
      case 3:
        push(new ScreenParameter());
        break;
    }
  }

  //单控件容器跳转逻辑
  void gotoSingleContainerPage(int i) {
    switch (i) {
      case 0:
        push(new ContainerWidget());
        break;
      case 1:
        push(new PaddingWidget());
        break;
      case 2:
        push(new CenterWidget());
        break;
      case 3:
        push(new AlignWidget());
        break;
      case 4:
        push(new FittedBoxWidget());
        break;
      case 5:
        push(new AspectRatioWidget());
        break;
      case 6:
        push(new ConstrainedBoxWidget());
        break;
      case 7:
        push(new BaseineWidget());
        break;
      case 8:
        push(new FractionallySizedBoxWidget());
        break;
      case 9:
        push(new IntrinsicHeightWidget());
        break;
      case 10:
        push(new IntrinsicWidthWidget());
        break;
      case 11:
        push(new LimitedBoxWidget());
        break;
      case 12:
        push(new OffstageWidget());
        break;
      case 13:
        push(new OverflowBoxWidget());
        break;
      case 14:
        push(new SizedBoxWidget());
        break;
      case 15:
        push(new SizedOverflowBoxWidget());
        break;
      case 16:
        push(new TransformWidget());
        break;
      case 17:
        push(new CustomSingleChildLayoutWidget());
        break;
      case 15:
        push(new TransformWidget());
        break;
    }
  }

  //基础控件跳转逻辑
  void gotoMultiplePage(int i) {
    switch (i) {
      case 0:
        push(new RowWidget());
        break;
      case 1:
        push(new ColumnWidget());
        break;
      case 2:
        push(new StackWidget());
        break;
      case 3:
        push(new IndexedStackWidget());
        break;
      case 4:
        push(new FlowWidget());
        break;
      case 5:
        push(new TableWidget());
        break;
      case 6:
        push(new WrapWidget());
        break;
      case 7:
        push(new ListBodyWidget());
        break;
      case 8:
        push(new ListBodyWidget());
        break;
      case 9:
        push(new CustomMultiChildLayoutWidget());
        break;
      case 10:
        push(new LayoutBuilderWidget());
        break;
    }
  }

  //进阶控件跳转逻辑
  void gotoAdvancedPage(int i) {
    switch (i) {
      case 0:
        push(new ListViewWidget());
        break;
      case 1:
        push(new GridViewWidget());
        break;
      case 2:
        push(new SwiperIndex());
        break;
      case 3:
        push(new SliverWidget());
        break;
    }
  }

  //Material控件跳转逻辑
  void gotoMaterialPage(int i) {
    switch (i) {
      case 0:
        push(new StructureIndex());
        break;
      case 1:
        push(new ButtonIndex());
        break;
      case 2:
        push(new InputAndSelectWidgetsIndex());
        break;
      case 3:
        push(new AlertWidgetsIndex());
        break;
      case 4:
        push(new ShowWidgetsIndex());
        break;
      case 5:
        push(new LayoutidgetsIndex());
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

  void gotoiOSPage(int i) {
    switch (i) {
      case 0:
        push(new iOSWidgetsIndex());
        break;
    }
  }
}
