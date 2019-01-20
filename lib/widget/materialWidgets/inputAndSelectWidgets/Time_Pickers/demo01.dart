import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  var _time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text(_time == null ? '选择日期' : _time),
          onPressed: () => _showDataPicker(),
        ),
        RaisedButton(
          child: Text(_time == null ? '选择时间' : _time),
          onPressed: () => _showTimePicker(),
        ),
      ],
    );
  }

//  _showDataPicker() async {
//    Locale myLocale = Localizations.localeOf(context);
//    var picker = await showDatePicker(
//        context: context,
//        initialDate: DateTime.now(),
//        firstDate: DateTime(2016),
//        lastDate: DateTime(2019),
//        locale: myLocale);
//    state.setState(() {
//      _time = picker.toString();
//    });
//  }

//  _showTimePicker() async {
//    var picker =
//        await showTimePicker(context: context, initialTime: TimeOfDay.now());
//    state.setState(() {
//      _time = picker.toString();
//    });
//  }

  _showDataPicker() async {
    Locale myLocale = Localizations.localeOf(context);
    var picker = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime.now().subtract(new Duration(days: 30)), // 减 30 天
      lastDate: new DateTime.now().add(new Duration(days: 30)),       // 加 30 天
    ).then((DateTime val) {
      print(val);
      state.setState((){
        int year =val.year;
        int month =val.month;
        int day =val.day;
        _time = "$year-$month-$day";
      });
      // 2018-07-12 00:00:00.000
    }).catchError((err) {
      print(err);
    });
  }

  _showTimePicker() async {
    Locale myLocale = Localizations.localeOf(context);
    var picker = await showTimePicker(
      context: context,
      initialTime: new TimeOfDay.now(),
    ).then((val) {
      print(val);
      state.setState((){
        int hour =val.hour;
        int minute =val.minute;
        _time = "$hour : $minute";
      });
    }).catchError((err) {
      print(err);
    });
  }
}
