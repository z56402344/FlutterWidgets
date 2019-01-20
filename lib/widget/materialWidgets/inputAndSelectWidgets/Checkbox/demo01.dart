import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  bool isCheck = false;
  List<bool> isChecks=[false,false,false];

  @override
  Widget build(BuildContext context) {

    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Center(
          child: new Row(
            children: <Widget>[
              new Checkbox(
                value: isCheck,
                activeColor: Colors.red,
                onChanged: (bool){
                  state.setState(() {
                    isCheck = bool;
                    for(int i = 0; i< isChecks.length;i++){
                      isChecks[i] = bool;
                    }
                  });
                },
              ),
              Text("全选"),
            ],
          ),

        ),
        new Center(
          child: new CheckboxListTile(
              value: isChecks[0],
              title: new Text('item01'),
              controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
              onChanged: (bool){
                state.setState(() {
                  isChecks[0]=bool;
                });
              }),
        ),
        new Center(
          child: new CheckboxListTile(
              value: isChecks[1],
              title: new Text('item02'),
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: (bool){
                state.setState(() {
                  isChecks[1]=bool;
                });
              }),
        ),
        new Center(
          child: new CheckboxListTile(
              value: isChecks[2],
              title: new Text('item03'),
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: (bool){
                state.setState(() {
                  isChecks[2]=bool;
                });
              }),
        ),
      ],
    );
  }

}
