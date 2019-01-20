import 'package:flutter/material.dart';

class Demo04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: new Icon(Icons.volume_up),
      tooltip: 'Increase volume by 10%',
      onPressed: () {
        // ...
      },
    );
  }
}
