import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return new Row(
      // <Widget> is the type of items in the list.
      children: <Widget>[
        new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null, // null disables the button
        ),
        // Expanded expands its child to fill the available space.
        new Expanded(
          child: Text("长按左边或者右边图标会有 tooltip的提示"),
        ),
        new IconButton(
          icon: new Icon(Icons.search),
          tooltip: 'Search',
          onPressed: null,
        ),
      ],
    );
  }
}
