import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new MaterialButton(
          color: Colors.blue,
          child: new Text('点我SimpleDialog01'),
          onPressed: () {
            simpleDialog01();
          },
        ),
        new MaterialButton(
          color: Colors.blue,
          child: new Text('点我SimpleDialog02'),
          onPressed: () {
            simpleDialog02();
          },
        ),
      ],
    );
  }

  void simpleDialog01() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('我是标题'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('我是内容 1'),
                new Text('我是内容 2'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  void simpleDialog02() {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: new Text('选择'),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text('选项 1'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new SimpleDialogOption(
              child: new Text('选项 2'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }
}
