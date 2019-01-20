import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
    bool _lights = true;
    return MergeSemantics(
      child: ListTile(
        title: Text('Lights'),
        trailing: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) { state.setState(() { _lights = value; }); },
        ),
        onTap: () { state.setState(() { _lights = !_lights; }); },
      ),
    );
  }
}
