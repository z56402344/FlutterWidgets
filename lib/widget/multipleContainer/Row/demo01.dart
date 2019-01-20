import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }

}
