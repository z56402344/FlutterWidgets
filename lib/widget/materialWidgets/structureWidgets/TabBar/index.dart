import 'package:flutter/material.dart';
import '../../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


const String title = "TabBar+TabBarView Widget";

const String _Text0 = """   ### **描述**
> $title
- 一个显示水平选项卡的Material Design widget。
  TabBar
  Tab页的Title控件，切换Tab页的入口，一般放到AppBar控件下使用，内部有*Title属性。其子元素按水平横向排列布局，如果需要纵向排列，请使用Column或ListView控件包装一下。子元素为Tab类型的数组。
  
  TabBarView
  Tab页的内容容器，其内放置Tab页的主体内容。子元素可以是多个各种类型的控件。
""";

const String _Text1 = """###  
> 属性:
```
tabs  //一般使用Tab对象,当然也可以是其他的Widget
controller //TabController对象
isScrollable //是否可滚动
indicatorColor //指示器颜色
indicatorWeight  //指示器厚度
indicatorPadding //底部指示器的Padding
indicator  //指示器decoration，例如边框等
indicatorSize  //指示器大小计算方式
labelColor //选中Tab文字颜色
labelStyle //选中Tab文字Style
unselectedLabelColor //未选中Tab中文字颜色
unselectedLabelStyle //未选中Tab中文字style

```
""";

const String _Text2 = """###  
> 代码参考 01
```
 TabBar 和 TabBarView的控制，用默认DefaultTabController
 new DefaultTabController(
    length: myTabs.length,
    child: new Scaffold(
      appBar: new AppBar(
        bottom: new TabBar(
          tabs: myTabs,
          isScrollable: true,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Center(child: MarkdownBody(data: _Text0),),
          new Center(child: MarkdownBody(data: _Text1),),
          new Center(child: new Text('End')),
        ],
      ),
    ),
 );
```
""";

const String _Text3 = """###  
> 代码参考 02
```
 TabBar 和 TabBarView的控制，用mTabController 控制器

 class TabBarWidget extends StatefulWidget {
  @override
  createState() => _BasefulWidgetState();
}

class _BasefulWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  PageController mTabBarViewController = PageController(initialPage: 0);

  List<Tab> myTabs = <Tab>[
    new Tab(text: '描述'),
    new Tab(text: '属性'),
    new Tab(text: '代码1默认Controller'),
    new Tab(text: '代码2TabController'),
  ];

  TabController mTabController;

  void dispose() {
    mTabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    mTabController = new TabController(vsync: this, length: myTabs.length);
    mTabController.addListener(() {
      if (mTabController.indexIsChanging) {
        //判断TabBar是否切换
        print("mTabController = mTabController.index");
        onPageChange(mTabController.index, p: mTabBarViewController);
      }
    });
  }

  onPageChange(int index, {PageController p, TabController t}) async {
    print("onPageChange index");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('顶部tab切换'),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.directions_bike),
            ),
            new Tab(
              icon: new Icon(Icons.directions_boat),
            ),
            new Tab(
              icon: new Icon(Icons.directions_bus),
            ),
          ],
          controller: mTabController,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new SizedBox(
            child: MarkdownBody(data: _Text0),
          ),
          new SizedBox(
            child: SingleChildScrollView(
              child: MarkdownBody(data: _Text1),
            ),
          ),
          new SizedBox(child: MarkdownBody(data: _Text2)),
          new SizedBox(child: MarkdownBody(data: _Text3)),
        ],
      ),
    );
  }
}

```
""";

class TabBarWidget extends StatefulWidget {
  @override
  createState() => _BasefulWidgetState();
}

class _BasefulWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  PageController mTabBarViewController = PageController(initialPage: 0);

  List<Tab> myTabs = <Tab>[
    new Tab(text: '描述'),
    new Tab(text: '属性'),
    new Tab(text: '代码1默认Controller'),
    new Tab(text: '代码2TabController'),
  ];

  TabController mTabController;

  void dispose() {
    mTabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    mTabController = new TabController(vsync: this, length: myTabs.length);
    mTabController.addListener(() {
      if (mTabController.indexIsChanging) {
        //判断TabBar是否切换
        print("mTabController = $mTabController.index");
        onPageChange(mTabController.index, p: mTabBarViewController);
      }
    });
  }

  onPageChange(int index, {PageController p, TabController t}) async {
    print("onPageChange $index");
  }

  @override
  Widget build(BuildContext context) {
//        return new DefaultTabController(
//          length: myTabs.length,
//          child: new Scaffold(
//            appBar: new AppBar(
//              title: Text(title),
//              bottom: new TabBar(
//                tabs: myTabs,
//                isScrollable: true,
//              ),
//            ),
//            body: new TabBarView(
//                  children: <Widget>[
//                    new SizedBox(
//                      child: MarkdownBody(data: _Text0),),
//                    new SizedBox(child: SingleChildScrollView(child: MarkdownBody(data: _Text1),),),
//                    new SizedBox(child: MarkdownBody(data: _Text2)),
//                  ],
//            ),
//
//          ),
//        );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        bottom: new TabBar(
          tabs: myTabs,
          controller: mTabController,
        ),
      ),
      body: new TabBarView(
        controller: mTabController,
        children: <Widget>[
          new SizedBox(
            child: MarkdownBody(data: _Text0),
          ),
          new SizedBox(
            child: SingleChildScrollView(
              child: MarkdownBody(data: _Text1),
            ),
          ),
          new SizedBox(child: MarkdownBody(data: _Text2)),
          new SingleChildScrollView(child: MarkdownBody(data: _Text3)),
        ],
      ),
    );
  }
}
