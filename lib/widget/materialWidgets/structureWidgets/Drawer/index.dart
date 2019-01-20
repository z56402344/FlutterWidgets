import 'package:flutter/material.dart';
import '../../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String title = "Drawer Widget";

const String _Text0 = """   ### **描述**
> $title
- 从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。
- Drawer是Android开发中Material风格常用的设计，就是我们常说的“抽屉”效果，一个从侧边栏拉出来的导航面板。
  在Flutter使用Material风格，最为常用的组件之一就是Scaffold了；Scaffold的drawer属性是一个Widget类型的组件，从左侧边栏拉出，通常就是用一个Drawer对象实现（Scaffold的endDrawer属性定义了一个从右侧边栏拉出的导航面板）；
  如果没有设置AppBar的leading属性，则当使用Drawer的时候会自动显示一个IconButton来告诉用户有侧边栏（在 Android 上通常是显示为三个横的图标）。
  Drawer的child属性定义了其展示的内容，通常是用一个 ListView来实现，而在ListView最上面通常会有个 DrawerHeader来设置当前用户的基本信息，最常用的一个具体的 DrawerHeader 是 UserAccountsDrawerHeader 。
""";

const String _Text1 = """###  
> 代码参考 Demo01
 new Scaffold(
      appBar: AppBar(
          title: Text(title),
      ),
      drawer: new Drawer(
        child: HomeBuilder.homeDrawer(),
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            Text("点击左上角图标展示Draw 抽屉"),
            Text("屏幕从左往右滑动展示Draw 抽屉"),

            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(height: 40.0),
          ],
        ),
      ),
 );
```
""";

class DrawerBarWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text(title),
      ),
      drawer: new Drawer(
        child: HomeBuilder.homeDrawer(),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("点击左上角图标展示Draw 抽屉"),
            Text("屏幕从左往右滑动展示Draw 抽屉"),

            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }

}

class HomeBuilder {
  static Widget homeDrawer() {
    return new ListView(padding: const EdgeInsets.only(), children: <Widget>[
      _drawerHeader(),
      new ClipRect(
        child: new ListTile(
          leading: new CircleAvatar(child: new Text("A")),
          title: new Text('Drawer item A'),
          onTap: () => {},
        ),
      ),
      new ListTile(
        leading: new CircleAvatar(child: new Text("B")),
        title: new Text('Drawer item B'),
        subtitle: new Text("Drawer item B subtitle"),
        onTap: () => {},
      ),
      new Divider(),//分割线
      new AboutListTile(
        icon: new CircleAvatar(child: new Text("Ab")),
        child: new Text("About"),
        applicationName: "Test",
        applicationVersion: "1.0",
        applicationIcon: new Image.asset(
          "images/food01.jpeg",
          width: 64.0,
          height: 64.0,
        ),
        applicationLegalese: "applicationLegalese",
        aboutBoxChildren: <Widget>[
          new Text("BoxChildren"),
          new Text("box child 2")
        ],
      ),
    ]);
  }

  static Widget _drawerHeader() {
    return new UserAccountsDrawerHeader(
//      margin: EdgeInsets.zero,
      accountName: new Text(
        "Flutter Draw",
//        style: HStyle.titleNav(),
      ),
      accountEmail: new Text(
        "https://github.com/z56402344",
//        style: HStyle.bodyWhite(),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: new AssetImage("images/food01.jpeg"),
      ),
      onDetailsPressed: () {},
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage("images/food01.jpeg"),
        ),
      ],
    );
  }
}
