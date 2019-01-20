import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
    );
  }
}
