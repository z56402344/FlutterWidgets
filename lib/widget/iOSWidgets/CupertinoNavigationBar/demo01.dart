import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: CupertinoNavigationBar(
        leading: Icon(Icons.arrow_back),
        middle: Text("标题1"),
        trailing: Text("标题2"),
        previousPageTitle: "标题3",
      ),
    );
  }
}
