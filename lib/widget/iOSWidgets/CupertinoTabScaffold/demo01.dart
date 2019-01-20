import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          // ...
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
        ],
        onTap: ((index){
          state.setState((){
            currentIndex = index;
          });
        }),

    ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
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
                              middle: Text('Page 2 of tab $index'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
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
    );
  }
}
