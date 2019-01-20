import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';

const String _Text0 =
"""### **描述**
> Row Widget
- 以垂直数组显示其子级的小部件。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此示例使用一列垂直排列三个小部件，最后一个小部件用于填充所有剩余空间。
```
  Column(
      children: <Widget>[
        Text('Deliver features faster'),
        Text('Craft beautiful UIs'),
        Icon(Icons.view_agenda)
      ],
   );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
- 在上面的示例中，文本和徽标位于每一行的中心。在下面的示例中，CrossAxisAlignment设置为CrossAxisAlignment.Start，这样子对象就可以左对齐。mainAxisize设置为mainAxisize.min，以便列收缩以适合子级。
```
 Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Text('We move under cover and we move as one'),
    Text('Through the night, we have one shot to live another day'),
    Text('We cannot let a stray gunshot give us away'),
    Text('We will fight up close, seize the moment and stay in it'),
    Text('It’s either that or meet the business end of a bayonet'),
    Text('The code word is ‘Rochambeau,’ dig me?'),
    Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
  ],
)
```
""";


class ColumnWidget extends BasefulWidget {

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

              ],
            ),
          ),
        );
  }

}