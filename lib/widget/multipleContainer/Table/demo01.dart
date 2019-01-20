import 'package:flutter/material.dart';


class Demo01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(50.0),
        1: FixedColumnWidth(100.0),
        2: FixedColumnWidth(50.0),
        3: FixedColumnWidth(100.0),
      },
      border: TableBorder.all(color: Colors.green, width: 1.0, style: BorderStyle.solid),
      children: const [
        TableRow(
          children: [
            Text('A1'),
            Text('B1'),
            Text('C1'),
            Text('D1'),
          ],
        ),
        TableRow(
          children: [
            Text('A2'),
            Text('B2'),
            Text('C2'),
            Text('D2'),
          ],
        ),
        TableRow(
          children: [
            Text('A3'),
            Text('B3'),
            Text('C3'),
            Text('D3'),
          ],
        ),
      ],
    );
  }

}
