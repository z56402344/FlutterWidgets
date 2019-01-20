import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Stack Widget";

const String _Text0 =
"""   ### **描述**
> $title
- Stack的布局行为，根据child是positioned还是non-positioned来区分。
  对于positioned的子节点，它们的位置会根据所设置的top、bottom、right以及left属性来确定，这几个值都是相对于Stack的左上角；
  对于non-positioned的子节点，它们会根据Stack的aligment来设置位置。
  对于绘制child的顺序，则是第一个child被绘制在最底端，后面的依次在前一个child的上面，类似于web中的z-index。如果想调整显示的顺序，则可以通过摆放child的顺序来进行。
""";

const String _Text1 =
"""###  
> 属性参数：
```
  this.alignment, //对齐方式，默认是左上角（topStart）
  this.textDirection, //文本的方向，一般不需要处理。
  this.fit， //设置non-positioned节点，默认loose
        StackFit有如下几种：
        loose：子节点宽松，可以从min到max的尺寸；
        expand：子节点尽可能的占用空间，取max尺寸；
        passthrough：不改变子节点的约束条件。
  this.overflow,  //超过的部分是否裁剪掉（clipped）

 Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/food01.jpeg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
 );
```
""";


class StackWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                SizedBox(height: 40.0),// 间距

              ],
            ),
          ),
        );
  }

}