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
> Row Widget
- 显示图像的小部件
@required this.image,
    this.semanticLabel, 
    this.excludeFromSemantics = false,
    this.width, //控件宽
    this.height, //控件高
    this.color, //前景颜色
    this.colorBlendMode, //滤镜类sing
    this.fit, //缩放类型
    this.alignment = Alignment.center,//相对于父布局的位置
    this.repeat = ImageRepeat.noRepeat,//平铺属性
    this.centerSlice, 
    this.matchTextDirection = false, //配合Directionality使控件左右翻转
    this.gaplessPlayback = false, //重新加载时是否保留原图
    this.filterQuality = FilterQuality.low,
""";

const String _Text1 =
"""###  
> 代码参考 Demo01 加载
- new Image，用于从ImageProvider，指asset,network,file,memory获取图像。
- new Image.asset，用于使用key从AssetBundle获取图像。
- new Image.network，用于从URL地址获取图像。
- new Image.file，用于从File获取图像。
- Image.memory	加载Uint8List资源图片
```
  Column(
      children: <Widget>[
        Image(image: new NetworkImage(urls[0])),
        //资源文件加载方式
        Image.asset('images/food01.jpeg');
        //网络加载方式
        Image.network(urls[0]),
        //文件加载方式
        Image.file(new File("/Users/gs/Downloads/1.jpeg"));
        // Uint8List图片
        Image.memory(bytes);
      ],
   );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02
```
 fit 属性 缩放模式
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03
- color & colorBlendMode
- color和colorBlendMode一般配合使用，BlendMode, 为混合模式的意思，包含如下诸多模式。感觉和Android中Xfermode是一个原理。 
- 由于BlendMode效果较多，仅展示几种效果
```
""";

const String _Text4 =
"""###  
> 代码参考 Demo04
- repeat 属性
- ImageRepeat.repeat 全屏铺满
- ImageRepeat.repeatX 横向铺满
- ImageRepeat.repeatY 纵向铺满

```
""";

const String _Text5 =
"""###  
> 代码参考 Demo05
- centerSlice 属性
- 当图片需要被拉伸显示的时候，centerSlice定义的矩形区域会被拉伸，可以理解成我们在图片内部定义来一个点9文件用作拉伸。
- 注意：显示大小大于原图大小的情况下，才允许使用这个属性，否则会报错。
```
""";

const String _Text6 =
"""###  
> 代码参考 Demo06
- matchTextDirection 属性 使图片左右水平翻转
- 需要与 Directionality 配合使用,
```
""";

const String _Text7 =
"""###  
> 代码参考 Demo07 (无展示效果)
- gaplessPlayback 属性
- 当ImageProvider发生变化后，重新加载图片的过程中，原图片的展示是否保留。若值为true，保留，若为false，不保留，直接空白等待下一张图片加载。
```
""";

class ImageWidget extends BasefulWidget {

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
                SizedBox(height: 20.0),// 间距
                MarkdownBody(data: _Text7),
              ],
            ),
          ),
        );
  }

}