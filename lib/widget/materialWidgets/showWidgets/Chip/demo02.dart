import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo02 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return InputChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('AB'),
        ),
        label: Text('Aaron Burr'),
        onPressed: () {
          print('I am the one thing in life.');
        }
    );
  }
}
