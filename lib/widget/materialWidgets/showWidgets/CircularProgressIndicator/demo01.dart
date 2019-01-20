import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Demo01 extends BasefulWidget {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _childLayout(),
    );
  }

  Widget _childLayout() {
    if (_loading) {
      return Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Center(
        child: RaisedButton(
          onPressed: () => _onRefresh(),
          child: Text('显示加载动画'),
        ),
      );
    }
  }

  Future<Null> _onRefresh() async {
    state.setState(() {
      _loading = !_loading;
    });
    await Future.delayed(Duration(seconds: 3), () {
      state.setState(() {
        _loading = !_loading;
        Fluttertoast.showToast(msg:"加载完成");
      });
    });
  }
}
