import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'demo01.dart';

const String title = "CupertinoTabScaffold Widget";

const String _Text0 =
"""### **描述**
> $title 
- iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用
""";


const String _Text1 =
"""###  
> 代码参考 Demo01

CupertinoTabBar, the bottom tab bar inserted in the scaffold.
CupertinoTabView, the typical root content of each tab that holds its own Navigator stack.
CupertinoPageRoute, a route hosting modal pages with iOS style transitions.
CupertinoPageScaffold, typical contents of an iOS modal page implementing layout with a navigation bar on top.


 CupertinoTabScaffold(
  tabBar: CupertinoTabBar(
    items: <BottomNavigationBarItem> [
      // ...
    ],
  ),
  tabBuilder: (BuildContext context, int index) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Page 1 of tab index'),
          ),
          child: Center(
            child: CupertinoButton(
              child: const Text('Next page'),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return CupertinoPageScaffold(
                        navigationBar: CupertinoNavigationBar(
                          middle: Text('Page 2 of tab index'),
                        ),
                        child: Center(
                          child: CupertinoButton(
                            child: const Text('Back'),
                            onPressed: () { Navigator.of(context).pop(); },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  },
)
```
""";


class CupertinoTabScaffoldWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title)),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  height: 500,
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}