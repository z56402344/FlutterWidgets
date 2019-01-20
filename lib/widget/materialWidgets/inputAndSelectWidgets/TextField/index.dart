import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';

const String title = "TextField";

const String _Text0 = """### **描述**
> $title
- 
    controller //控制器，控制TextField文字
    focusNode,
    decoration: const InputDecoration() //输入器装饰
    keyboardType: //输入的类型
    style,//输入文本的样式
    textAlign:  //文本对齐方式
    autofocus: false,//是否自动对焦
    obscureText: false,  //是否隐藏输入
    autocorrect: true,//是否自动更正
    maxLines: 1,//最大行数
    maxLength, //最大长度，设置此项会让TextField右下角有一个输入数量的统计字符串
    maxLengthEnforced: true,
    onChanged //文字改变触发
    onSubmitted //文字提交触发（键盘按键）
    onEditingComplete //当用户提交可编辑内容时调用
    inputFormatters //允许的输入格式
    enabled,
    cursorWidth = 2.0,
    cursorRadius,
    cursorColor,
    keyboardAppearance,
    
""";

const String _Text1 = """###  
> 代码参考 Demo01
```
 new Container(
      margin: new EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.phone),
              labelText: '请输入你的用户名',
              helperText: '注册的手机号',
            ),
            autofocus: false,
          ),
          TextField(
              controller: passController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                icon: Icon(Icons.lock),
                labelText: '请输入密码',
              ),
              obscureText: true),
          RaisedButton(
            onPressed: _login,
            child: Text('登录'),
          ),
        ],
      ),
 );
```
""";

class TextFieldWidget extends BasefulWidget {
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
