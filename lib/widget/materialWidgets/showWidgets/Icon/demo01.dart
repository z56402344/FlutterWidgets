import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10%',
          onPressed: () {
            state.setState(() {
              _volume *= 1.1;
            });
          },
        ),
        Text("音量 = $_volume"),
        IconTheme(
          child: IconButton(icon: Icon(Icons.image), onPressed: (() {})),
        ),
      ],
    );
  }
}
