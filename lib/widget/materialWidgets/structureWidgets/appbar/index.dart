import 'package:flutter/material.dart';
import '../../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';

const String title = "AppBar Widget";

const String _Text0 =
"""### **描述**
> $title
- 应用程序栏，位置固定在顶部
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
 AppBar(
      title: Text('My Fancy Dress'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.playlist_play),
          tooltip: 'Air it',
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.playlist_add),
          tooltip: 'Restitch it',
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.playlist_add_check),
          tooltip: 'Repair it',
          onPressed: (){},
        ),
      ],
 );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
  AppBar(
        title: new Text("AppBar"),
        leading: new Icon(Icons.home),
        backgroundColor: Colors.amber[500],
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add_alarm),
              tooltip: 'Add Alarm',
              onPressed: () {
                // do nothing
              }),
          new PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                new PopupMenuItem<String>(
                    value: "price", child: new Text('Sort by price')),
                new PopupMenuItem<String>(
                    value: "time", child: new Text('Sort by time')),
              ],
              onSelected: (String action) {
                switch (action) {
                  case "price":
                  // do nothing
                    break;
                  case "time":
                  // do nothing
                    break;
                }
              })
        ],
  );
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03
- 可以看到Demo02常见的问题
- Demo02中右边显示明显的bug，可以通过Expanded解决，将第二个子对象包装在一个扩展的小部件中，该小部件告诉行应该给该子对象剩余的空间：
```
 Row(
  children: <Widget>[
    const FlutterLogo(),
    const Expanded(
      child: Text('Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
    ),
    const Icon(Icons.sentiment_very_satisfied),
  ],
)
```
""";

class AppBarWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text2),
                SizedBox(
                  child: Demo02(),
                ),
                SizedBox(height: 40.0),// 间距

              ],
            ),
          ),
        );
  }

}