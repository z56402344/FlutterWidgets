import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo05 extends BasefulWidget {


  @override
  Widget build(BuildContext context) {
    return ActionChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('AB'),
        ),
        label: Text('Aaron Burr'),
        onPressed: () {
          print("If you stand for nothing, Burr, what’ll you fall for?");
        }
    );
  }
}

class ActorFilterEntry {
  const ActorFilterEntry(this.name, this.initials);
  final String name;
  final String initials;
}
