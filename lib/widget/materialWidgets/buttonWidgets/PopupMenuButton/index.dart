import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "PopupMenuButton";

const String _Text0 = """### **描述**
> PopupMenuButton Widget
- 

- PopupMenuButton:
    @required this.itemBuilder, //item事件
    this.initialValue,
    this.onSelected,  //点击Item的回调事件
    this.onCanceled,  //取消的回调事件
    this.tooltip,
    this.elevation = 8.0,  ////高度 显示出立体感 立体阴影
    this.padding = const EdgeInsets.all(8.0),
    this.child,
    this.icon,
    this.offset = Offset.zero,

""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) { state.setState(() { _selection = result; }); },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
 );
```
""";

class PopupMenuButtonWidget extends BasefulWidget {
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
            RaisedButton(
              child: Text("点击上面图标，PopupMenuButton"),
            ),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }
}
