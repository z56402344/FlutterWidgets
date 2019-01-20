import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


const String title = "LayoutBuilder Widget";

const String _Text0 =
"""   ### **描述**
> $title
- 构建一个可以依赖父窗口大小的widget树。
- 与builder小部件类似，只是框架在布局时调用builder函数并提供父小部件的约束。当父对象约束子对象的大小且不依赖于子对象的内部大小时，此选项非常有用。LayoutBuilder的最终大小将与其子级大小匹配。
- 如果子级应该小于父级，请考虑将子级包装在一个Align小部件中。如果孩子想要更大，可以考虑将其包装在singleChildScrollView中。
""";


class LayoutBuilderWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text0),
                SizedBox(height: 40.0),// 间距

              ],
            ),
          ),
        );
  }

}