import 'package:flutter/material.dart';

int _count = 0;

class Demo01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaffoldDemo();
  }
}

class _ScaffoldDemo extends State<Demo01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      //当 Scaffold 实际上是在同一个构建函数中创建时，
      //构建函数的 BuildContext 参数不能用于查找 Scaffold（因为它位于返回的小部件的“上方”）。
      //因为在源码中 使用的是 return new Scaffold(app:xxxx)，
      // 在这种情况下面，通过在 Scaffold 中使用一个 Builder 来提供一个新的 BuildContext：
      body: new Builder(builder: (BuildContext context) {
        return Center(
            child: new Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Text('You have pressed the button $_count times.'),
            RaisedButton(
              child: new Text('点击显示 SNACKBAR'),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text('Hello World!')));
              },
            ),
            RaisedButton(
              child: new Text('点击左上角显示抽屉控件'),
              onPressed: () {
                new Drawer(
                  child: DrawerBuilder.testDrawer(),
                );
              },
            ),
          ],
        ));
      }),
      drawer: new Drawer(
        child: new SizedBox(
          child: DrawerBuilder.testDrawer(),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Text(
            "bottomNavigationBar",
            textAlign: TextAlign.left,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
              _count++;
            }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class DrawerBuilder {
  static Widget testDrawer() {
    return new ListView( padding: const EdgeInsets.only(), children: <Widget>[
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
      new AboutListTile(
        icon: new CircleAvatar(child: new Text("Ab")),
        child: new Text("关于"),
        applicationName: "关于FlutterApp",
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
        "Flutter博客",
//        style: HStyle.titleNav(),
      ),
      accountEmail: new Text(
        "codehome1401@gmail.com\ngithub.com/z56402344",
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
