import 'package:flutter/material.dart';


class Demo02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Text("AppBar"),
      leading: new Icon(Icons.home),
      backgroundColor: Colors.amber[500],
//      centerTitle: true,
      actions: <Widget>[
        new IconButton(
            icon: new Icon(Icons.add_alarm),
            tooltip: 'Add Alarm',
            onPressed: () {
              // do nothing
            }),
        new PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                  value: "price", child: new Text('Sort by price')),
              new PopupMenuItem<String>(
                  value: "time", child: new Text('Sort by time')),
            ],
            onSelected: (String action) {
              switch (action) {
                case "price":
                // do nothing
                  break;
                case "time":
                // do nothing
                  break;
              }
            })
      ],
    );

  }

}
