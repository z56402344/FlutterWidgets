import 'package:flutter/material.dart';




class SwiperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('${this} hashCode=${this.hashCode}');
    return Scaffold(appBar: AppBar(title: Text('Second page'),),
      body: Center(child: RaisedButton(
          child: Text("Go back"),
          onPressed: () {
            print('This is 2nd page');
            Navigator.pop(context);
          }),),);
  }
}