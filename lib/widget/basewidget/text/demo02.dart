import 'package:flutter/material.dart';


class Demo02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: <TextSpan>[
          TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' Xiao ', style: TextStyle(color: const Color(0xFFFF0000)),),
        ],
      ),
    );
  }

}
