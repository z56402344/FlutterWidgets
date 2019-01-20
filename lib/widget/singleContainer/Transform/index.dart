import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String title = "Transform Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 在绘制子widget之前应用转换的widget。
- 如果这个小部件的尺寸受到限制，并且widthfactor和heightfactor为空，那么它将尽可能大。如果一个维度是不受约束的，并且相应的大小因子控件为空，那么该小部件将匹配其子维度中的大小。如果一个大小因子控件不为空，那么这个小部件的对应维度将是子维度和大小因子的乘积。例如，如果widthfactor为2.0，则此小部件的宽度将始终是其子部件宽度的两倍。
""";

const String _Text1 =
"""###  
> 代码参考 Demo01
- 此示例旋转并倾斜包含文本的橙色框，使右上角固定到其原始位置。
```
 Container(
      color: Colors.black,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color(0xFFE8581C),
          child: const Text('Apartment for rent!'),
        ),
      ),
  );
```
""";


class TransformWidget extends BasefulWidget {

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