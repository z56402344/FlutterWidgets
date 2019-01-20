import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  //  定义底部导航列表
  final List<BottomNavigationBarItem> bottomTabs = [
    new BottomNavigationBarItem(
      icon: new Icon(CupertinoIcons.home),
      title: new Text('首页'),
    ),
    new BottomNavigationBarItem(
        icon: new Icon(CupertinoIcons.conversation_bubble),
        title: new Text('联系人')),
    new BottomNavigationBarItem(
        icon: new Icon(CupertinoIcons.search), title: new Text('发现')),
    new BottomNavigationBarItem(
        icon: new Icon(CupertinoIcons.profile_circled), title: new Text('我'))
  ];
  final List<String> tabBodies = [
    "HomePage",
    "HotPage",
    "DiscoveryPage",
    "BookPage",
    "MinePage"
  ];
  int currentIndex = 0; //当前索引
  String currentPage; //当前页面

  @override
  Widget build(BuildContext context) {
    return new CupertinoTabBar(
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          state.setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        });
  }
}
