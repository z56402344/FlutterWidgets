import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "Slider Widgets";

const String _Text0 = """### **描述**
> $title
- 滑块，允许用户通过滑动滑块来从一系列值中选择。
    
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
value	//控件的位置
onChanged	//变化时回调
onChangeStart	//滑动开始时回调一次
onChangeEnd	//滑动结束时回调一次
min	//最小值
max	//最大值
divisions	//分为几块，比如设置为5，Slider只能滑动到5个位置
label	//divisions设置显示在节点上的label
activeColor	//滑动过的区域的颜色
inactiveColor	//未滑动过的区域的颜色

  new Slider(
        value: progressValue,
        //实际进度的位置
        inactiveColor: Colors.black12,
        //进度中不活动部分的颜色
        label: 'progressValue',
        min: 0.0,
        max: 100.0,
        divisions: 1000,
        activeColor: Colors.blue,
        //进度中活动部分的颜色
        onChangeStart: (double) {
          print("double");
        },
        onChangeEnd: (double) {
          print("double");
        },
        onChanged: (double) {
          state.setState(() {
            progressValue = double.roundToDouble();
          });
        },
      ),
      width: 300.0,
  ),
```
""";

class SliderWidget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(
              child: Demo01(),
            ),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }
}
