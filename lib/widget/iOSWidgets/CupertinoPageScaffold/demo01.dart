import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(Icons.arrow_back),
        middle: Text("标题"),
        trailing: Text("标题2"),
      ),
      child: Text("body"),
    );
  }
}
