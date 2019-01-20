import 'package:flutter/material.dart';
import '../../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String title = "BottomNavigationBar Widget";

const String _Text0 = """   ### **描述**
> $title
- 底部导航条，可以很容易地在tap之间切换和浏览顶级视图。
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 bottomNavigationBar: BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(Icons.business), title: Text('Business')),
      BottomNavigationBarItem(
          icon: Icon(Icons.school), title: Text('School')),
    ],
    currentIndex: _selectedIndex,
    fixedColor: Colors.deepPurple,
    onTap: _onItemTapped,
 ),
```
""";

class BottomNavigationBarWidget extends BasefulWidget {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    state.setState(() {
      _selectedIndex = index;
    });
  }
}
