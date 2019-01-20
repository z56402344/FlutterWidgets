import 'package:flutter/material.dart';


class Demo02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        //点击事件
      },
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    );
  }

}
