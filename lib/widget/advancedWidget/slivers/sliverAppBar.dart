import 'package:flutter/material.dart';
import 'elementItem.dart';

const _Text1 =
"""### **描述**
> Siwiper “轮播图”
- 属性：
Key key,
this.leading,         //左侧标题图标
this.automaticallyImplyLeading = true,
this.title,               //标题
this.actions,          //菜单
this.flexibleSpace,        //可以展开区域，通常是一个FlexibleSpaceBar
this.bottom,         //底部内容区域
this.elevation,            //阴影
this.forceElevated = false,
this.backgroundColor,       //背景色
this.brightness,   /主题明亮
this.iconTheme,  //图标主题
this.textTheme,    //文字主题
this.primary = true,  //是否预留高度
this.centerTitle,     //标题是否居中
this.titleSpacing = NavigationToolbar.kMiddleSpacing,
this.expandedHeight,     //展开高度
this.floating = false,       //是否随着滑动隐藏标题
this.pinned = false,  //是否固定在顶部
this.snap = false,   //与floating结合使用
""";



class SliverAppBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliverAppBarState();
}

class _SliverAppBarState extends State<SliverAppBarPage> {
  bool floating = false;
  bool snap = false;
  bool pinned = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              _buildAction(),
            ],
            title: Text('SliverAppBar'),
            backgroundColor: Theme.of(context).accentColor,
            expandedHeight: 200.0,//展开高度
            flexibleSpace: FlexibleSpaceBar(//可以展开区域，通常是一个FlexibleSpaceBar
              background: Image.asset('images/food01.jpeg', fit: BoxFit.cover),
            ),
            floating: floating,//是否随着滑动隐藏标题
            snap: snap,//是否固定在顶部
            pinned: pinned,//与floating结合使用
          ),
          SliverFixedExtentList(
            itemExtent: 120.0,
            delegate: SliverChildListDelegate(
              products.map((product) {
                return _buildItem(product);
              }).toList(),
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
          child: Text('floating = true'),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Text('floating = true , snap = true'),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Text('pinned = true'),
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

  Widget _buildItem(ProductItem product) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Positioned(
              left: 30.0,
              child: Card(
                child: Container(
                  margin: EdgeInsets.only(left: 50.0),
                  child: Text(
                    product.name,
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              )),
          ClipRRect(
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Image.asset(
                product.asset,
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ],
      ),
    );
  }
}
