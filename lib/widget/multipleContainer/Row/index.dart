import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';
import 'demo03.dart';

const String _Text0 =
"""### **描述**
> Row Widget
- 在水平数组中显示其子级的小部件
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此示例将可用空间分为三个部分（水平），并将文本放在前两个单元格的中心位置，将flutter徽标放在第三个单元格的中心位置：
```
 Row(
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
  );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
 Row(
      children: <Widget>[
        const FlutterLogo(),
        const Text('Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
        const Icon(Icons.sentiment_very_satisfied),
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

class RowWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(""),),
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
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text3),
                SizedBox(
                  child: Demo03(),
                ),
              ],
            ),
          ),
        );
  }

}