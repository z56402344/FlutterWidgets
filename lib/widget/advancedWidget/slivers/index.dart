import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/widget/advancedWidget/slivers/sliversHeader.dart';

import 'sliverGrid.dart';
import 'sliverList.dart';
import 'sliverAppBar.dart';

const String _Text0 =
"""### **描述**
> Sliver Widget
- 可以看做CustomScrollView，但是flutter自带Sliver控件
""";

class SliverWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text("SliverWidget"),),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                RaisedButton(
                  onPressed: (){
                    gotoPage(new SliverListPage());
                  },
                  child: Text("sliverList Demo"),
                ),
                SizedBox(height: 20.0),// 间距
                RaisedButton(
                  onPressed: (){
                    gotoPage(new SliverGridPage());
                  },
                  child: Text("sliverGrid Demo"),
                ),
                SizedBox(height: 20.0),// 间距
                RaisedButton(
                  onPressed: (){
                    gotoPage(new SliverAppBarPage());
                  },
                  child: Text("sliverAppBar Demo"),
                ),
                SizedBox(height: 20.0),// 间距
                RaisedButton(
                  onPressed: (){
                    gotoPage(new SliverHeaderPage());
                  },
                  child: Text("sliversHeader Demo"),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

  Widget gotoPage(Widget widget){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return widget;
    }));
  }

}