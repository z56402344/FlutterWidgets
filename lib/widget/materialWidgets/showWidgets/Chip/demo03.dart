import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo03 extends BasefulWidget {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List<Widget>.generate(
        3,
        (int index) {
          return ChoiceChip(
            label: Text('Item $index'),
            selected: _value == index,
            onSelected: (bool selected) {
              state.setState(() {
                _value = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
