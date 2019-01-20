import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';
import 'demo02.dart';
import 'demo03.dart';
import 'demo04.dart';
import 'demo05.dart';
import 'demo06.dart';

const String _Text0 =
"""### **描述**
> Button Widget
- 文本小部件
- FlatButton，没有阴影的材质设计按钮。
- FloatingActionButton，材料应用中的圆形按钮。
- DropdownButton，显示要从中选择的选项的按钮。
- IconButton，创建只包含图标的按钮。
- InkWell，它实现了平面按钮的喷墨部分。
- RawMaterialButton,这个小部件所基于的小部件。

- Button常用参数:
    @required VoidCallback onPressed, //点击事件
    ValueChanged<bool> onHighlightChanged, //按下和抬起时都会调用的方法
    ButtonTextTheme textTheme, //定义按钮的基色，以及按钮的最小尺寸，内部填充和形状的默认值
    Color textColor, //按钮文本的颜色
    Color disabledTextColor, //未设置按钮点击回调时使用的文本颜色
    Color color, //按钮的填充颜色
    Color disabledColor, //未设置按钮点击回调时按钮的填充颜色
    Color highlightColor, //按钮被按下的填充颜色
    Color splashColor, //按钮被按下的水波纹颜色，默认是有值的，不要要水波纹效果设置透明颜色即可！
    Brightness colorBrightness, //按钮的主题亮度，当设置了textColor、color颜色，此值无效!
    double elevation, //放置此按钮的z坐标。这可以控制凸起按钮下方阴影的大小
    double highlightElevation, //设置了按钮点击回调时按钮的阴影的大小
    double disabledElevation, //未设置按钮点击回调时按钮的阴影的大小
    EdgeInsetsGeometry padding, //所有控件的子空间
    ShapeBorder shape,  //按钮形状, 子类才起效果！
    Clip clipBehavior = Clip.none, 据此选项将剪裁（或不剪辑）内容
    MaterialTapTargetSize materialTapTargetSize,  
    Duration animationDuration, //定义 shape 和 elevation 的动画更改的持续时间

""";

const String _Text1 =
"""###  
> 代码参考 Demo01
```
 RaisedButton(
      onPressed: () {
        //点击事件
      },
      color: Colors.blue[400],
      child: new Text('RaisedButton', style: new TextStyle(color: Colors.white)),
    );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
 FloatingActionButton(
      onPressed: (){
        //点击事件
      },
      tooltip: 'Increment', //长按描述事件
      child: new Icon(Icons.add),
 );
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03
```
 DropdownButton 下拉按钮
```
""";

const String _Text4 =
"""###  
> 代码参考 Demo04
```
 IconButton(
      icon: new Icon(Icons.volume_up),
      tooltip: 'Increase volume by 10%',
      onPressed: () {
        // ...
      },
 );
```
""";

const String _Text5 =
"""###  
> 代码参考 Demo05
- InkWell Button
- 被GestureDetector包裹的Widget没有涟漪效果,查看文档需要使用InkWell实现此效果。
```
```
""";

const String _Text6 =
"""###  
> 代码参考 Demo06
- 利用很多Button属性的效果
```
```
""";


class ButtonWidget extends BasefulWidget {

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
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text4),
                SizedBox(
                  child: Demo04(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text5),
                SizedBox(
                  child: Demo05(),
                ),
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text6),
                SizedBox(
                  child: Demo06(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}