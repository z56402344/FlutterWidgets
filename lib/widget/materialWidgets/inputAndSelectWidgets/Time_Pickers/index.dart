import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "Time_Pickers Widgets";

const String _Text0 = """### **描述**
> $title
- 日期&时间选择器
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
Future<DateTime> showDatePicker ({
    @required BuildContext context, // 上下文
    @required DateTime initialDate, // 初始日期
    @required DateTime firstDate,   // 日期范围，开始
    @required DateTime lastDate,    // 日期范围，结尾
    SelectableDayPredicate selectableDayPredicate,
    DatePickerMode initialDatePickerMode: DatePickerMode.day,
    Locale locale,                  // 国际化
    TextDirection textDirection,
});

Future<TimeOfDay> showTimePicker({
    @required BuildContext context,
    @required TimeOfDay initialTime
});

  showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime.now().subtract(new Duration(days: 30)), // 减 30 天
      lastDate: new DateTime.now().add(new Duration(days: 30)),       // 加 30 天
    ).then((DateTime val) {
      print(val);   // 2018-07-12 00:00:00.000
    }).catchError((err) {
      print(err);
  });
    
  showTimePicker(
      context: context,
      initialTime: new TimeOfDay.now(),
    ).then((val) {
      print(val);
    }).catchError((err) {
      print(err);
  });
```
""";

class TimePickersWidget extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(
              child: Demo01(),
            ),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }
}
