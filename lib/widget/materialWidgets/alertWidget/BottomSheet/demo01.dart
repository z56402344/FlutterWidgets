import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new MaterialButton(
          color: Colors.blue,
          child: new Text('点我showBottomSheet01'),
          onPressed: () {
            showBottomSheet01();
          },
        ),
        new MaterialButton(
          color: Colors.blue,
          child: new Text('点我showBottomSheet02'),
          onPressed: () {
            showBottomSheet02();
          },
        ),
      ],
    );
  }

  void showBottomSheet01() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          height: 300.0,
          child: new Image.asset("images/food01.jpeg"),
        );
      },
    ).then((val) {
      print(val);
    });
  }

  void showBottomSheet02() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          height: 150.0,
          child: new Column(
            children: <Widget>[
              ListTile(
                leading: new Container(
                  width: 70,
                  height: 35,
                  child: new Image.asset("images/food01.jpeg"),
                ),
                title: Text("我是标题"),
                subtitle: Text("我是副标题"),
                onTap: ((){
                  //点击事件
                }),
              ),
              ListTile(
                leading: new Container(
                  width: 70,
                  height: 35,
                  child: new Image.asset("images/food01.jpeg"),
                ),
                title: Text("我是标题"),
                subtitle: Text("我是副标题"),
              ),
            ],
          ),
        );
      },
    ).then((val) {
      print(val);
    });
  }

}
