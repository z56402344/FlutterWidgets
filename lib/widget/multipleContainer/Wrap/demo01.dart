import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.red.shade300, child: Text('A')),
          label: Text('01'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.yellow, child: Text('B')),
          label: Text('01'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('C')),
          label: Text('01'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.green, child: Text('D')),
          label: Text('01'),
        ),
      ],
    );
  }

}
