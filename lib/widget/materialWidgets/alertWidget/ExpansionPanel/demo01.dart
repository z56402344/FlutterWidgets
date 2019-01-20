import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  var currentPanelIndex = -1; //设置-1默认全部闭合
  List<int> mList = [0,1,2];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text('这是一个自带的'),
        new ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            state.setState(() {
              currentPanelIndex =
                  (currentPanelIndex != panelIndex ? panelIndex : -1);
            });
          },
          children: mList.map((i) {
            return new ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return new ListTile(
                  title: new Text('这是标题$i'),
                );
              },
              body: new Padding(
                padding: EdgeInsets.all(30.0),
                child: new ListBody(
                  children: <Widget>[
                    new Text('这是标题$i的内容'),
                  ],
                ),
              ),
              isExpanded: currentPanelIndex == i,
            );
          }).toList(),
        ),
        new Text('拉一个好看点的吧，类似qq分组之类的'),
      ],
    );
  }
}
