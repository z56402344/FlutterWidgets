import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  String _newValue = '语文';

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Text("选择的是 $_newValue"),
        Row(
          children: <Widget>[
            Text("Radio<String>方式："),
            Radio<String>(
                value: "语文",
                groupValue: _newValue,
                onChanged: (value) {
                  state.setState(() {
                    _newValue = value;
                  });
                }),
            Radio<String>(
                value: "数学",
                groupValue: _newValue,
                onChanged: (value) {
                  state.setState(() {
                    _newValue = value;
                  });
                }),
            Radio<String>(
                value: "英语",
                groupValue: _newValue,
                onChanged: (value) {
                  state.setState(() {
                    _newValue = value;
                  });
                }),
          ],
        ),
        Column(
          children: <Widget>[
            Text("RadioListTile<String>方式:"),
            RadioListTile<String>(
              value: '语文',
              title: Text('语文'),
              groupValue: _newValue,
              onChanged: (value) {
                state.setState(() {
                  _newValue = value;
                });
              },
            ),
            RadioListTile<String>(
              value: '数学',
              title: Text('数学'),
              groupValue: _newValue,
              onChanged: (value) {
                state.setState(() {
                  _newValue = value;
                });
              },
            ),
            RadioListTile<String>(
              value: '英语',
              title: Text('英语'),
              groupValue: _newValue,
              onChanged: (value) {
                state.setState(() {
                  _newValue = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

}
