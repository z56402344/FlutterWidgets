import 'package:flutter/material.dart';


class Demo02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('We move under cover and we move as one'),
        Text('Through the night, we have one shot to live another day'),
        Text('We cannot let a stray gunshot give us away'),
        Text('We will fight up close, seize the moment and stay in it'),
        Text('It’s either that or meet the business end of a bayonet'),
        Text('The code word is ‘Rochambeau,’ dig me?'),
        Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
      ],
    );
  }

}
