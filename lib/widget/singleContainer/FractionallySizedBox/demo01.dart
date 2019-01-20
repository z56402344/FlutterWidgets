import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          child: new FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: 1.5,
            heightFactor: 1.5,
            child: new Container(
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          child: new FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: 1.5,
            heightFactor: 0.5,
            child: new Container(
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          child: new FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: 1.5,
//            heightFactor: 0.5,
            child: new Container(
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          child: new FractionallySizedBox(
            alignment: Alignment.topLeft,
//            widthFactor: 1.5,
            heightFactor: 0.5,
            child: new Container(
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          child: new FractionallySizedBox(
            alignment: Alignment.topLeft,
//            widthFactor: 1.5,
//            heightFactor: 0.5,
            child: new Container(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
