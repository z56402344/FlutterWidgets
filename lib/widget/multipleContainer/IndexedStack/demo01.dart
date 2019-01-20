import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: IndexedStack(
        index: 1,
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/food01.jpeg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'layer B',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
