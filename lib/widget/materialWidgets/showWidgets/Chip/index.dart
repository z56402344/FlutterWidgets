import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';
import 'demo02.dart';
import 'demo03.dart';
import 'demo04.dart';
import 'demo05.dart';

const String title = "Chip Widget";

const String _Text0 =
"""### **描述**
> $title 
- 标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人
""";


const String _Text1 =
"""###  
> 代码参考 Demo01 Chip
```
 Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
    );
```
""";

const String _Text2 =
"""###  
> 代码参考 Demo02 InputChip
```
 InputChip(
  avatar: CircleAvatar(
    backgroundColor: Colors.grey.shade800,
    child: Text('AB'),
  ),
  label: Text('Aaron Burr'),
  onPressed: () {
    print('I am the one thing in life.');
  }
)
```
""";

const String _Text3 =
"""###  
> 代码参考 Demo03 ChoiceChip
```
 Wrap(
      children: List<Widget>.generate(
        3,
        (int index) {
          return ChoiceChip(
            label: Text('Item index'),
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
```
""";

const String _Text4 =
"""###  
> 代码参考 Demo04 FilterChip
```
 Wrap(
      children: List<Widget>.generate(
        3,
        (int index) {
          return ChoiceChip(
            label: Text('Item index'),
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
```
""";

const String _Text5 =
"""###  
> 代码参考 Demo05 ActionChip
```
 ActionChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
      onPressed: () {
        print("If you stand for nothing, Burr, what’ll you fall for?");
      }
 );
```
""";

class ChipWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(title: Text(title)),
          body: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MarkdownBody(data: _Text0),
                SizedBox(height: 20.0), // 间距
                MarkdownBody(data: _Text1),
                SizedBox(
                  child: Demo01(),
                ),
                MarkdownBody(data: _Text2),
                SizedBox(
                  child: Demo02(),
                ),
                MarkdownBody(data: _Text3),
                SizedBox(
                  child: Demo03(),
                ),
                MarkdownBody(data: _Text4),
                SizedBox(
                  child: Demo04(),
                ),
                MarkdownBody(data: _Text4),
                SizedBox(
                  child: Demo05(),
                ),
                SizedBox(height: 40.0),// 间距
              ],
            ),
          ),
        );
  }

}