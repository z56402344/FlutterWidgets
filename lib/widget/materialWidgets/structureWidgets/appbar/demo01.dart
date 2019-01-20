import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My Fancy Dress'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.playlist_play),
          tooltip: 'Air it',
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.playlist_add),
          tooltip: 'Restitch it',
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.playlist_add_check),
          tooltip: 'Repair it',
          onPressed: (){},
        ),
      ],
    );
  }

}
