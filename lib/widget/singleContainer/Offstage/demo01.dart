import 'package:flutter/material.dart';


class Demo01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Demo01State();
}

class _Demo01State extends State<Demo01> {
  bool offstage = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Offstage(
          offstage: offstage,
          child: Image.asset("images/food01.jpeg"),
        ),
        new RaisedButton(
          child: Text("点击切换显示"),
          onPressed: () {
            setState(() {
              offstage = !offstage;
            });
          },
        ),
      ],
    );
  }

}
