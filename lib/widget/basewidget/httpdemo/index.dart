import 'package:flutter/material.dart';
import 'package:myapp/bean/Login.dart';
import 'package:myapp/common/AllFid.dart';
import 'package:myapp/net/HttpItem.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'demo01.dart';

const String _Text0 = """### **描述**
> Http请求Demo
- Json解析

""";

const String _Text1 = """###  
> 代码参考 Demo01 手动解析Json
```
  void httpLogin(int id){
    HttpItem http = new HttpItem();
    String url = "https://www.apiopen.top/login";
    http
        .setUrl(url)
        .setId(id)
        .putStr("key", "00d91e8e0cca2b76f515926a36db68f5")
        .putStr("phone", "13594347817")
        .putStr("passwd", "123456")
        .setListener(this)
        .get();
  }

  @override
  void onHttpError(int id, int errCode, String errMsg, Exception e) {
    print("onHttpError  id=id, errcode=errCode, errMsg=errMsg");
  }

  @override
  bool onHttpOK(int id, int code, String msg, dynamic res) {
    print("onHttpOK  id=id, errcode=code, msg=msg");
    switch (id) {
      case HttpLogin:
        print("处理HttpLogin 返回的逻辑");
        break;
      case HttpLogin2:
        print("处理HttpLogin2 返回的逻辑");
        login = Login.fromJson(res);
        body = res.toString();
        name = login.name;
        phone = login.phone;
        state.setState(() {
          //刷新界面数据

        });
        print("login.key=" + login.key + "login.name=" + login.name);
        break;
    }
    return true;
  }

```
""";

class httpWidget extends BasefulWidget implements IOKErrLis {
  Login login;
  String body;
  String name;
  String phone;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(""),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
//                SizedBox(
//                  child: Demo01(),
//                ),
            RaisedButton(
              child: Text("点击HttpLogin接口"),
              onPressed: (() {
                httpLogin(HttpLogin);
              }),
            ),
            RaisedButton(
              child: Text("点击HttpLogin2接口"),
              onPressed: (() {
                httpLogin(HttpLogin2);
              }),
            ), //
//            Text("name="+login.name.toString()),
//            Text("phone="+login.phone.toString()),
            Text("response body=$body"),
            Text("name=$name"),
            Text("phone=$phone"),
            SizedBox(height: 40.0), // 间距
          ],
        ),
      ),
    );
  }

  void httpLogin(int id){
    HttpItem http = new HttpItem();
    String url = "https://www.apiopen.top/login";
    http
        .setUrl(url)
        .setId(id)
        .putStr("key", "00d91e8e0cca2b76f515926a36db68f5")
        .putStr("phone", "13594347817")
        .putStr("passwd", "123456")
        .setListener(this)
        .get();
  }

  @override
  void onHttpError(int id, int errCode, String errMsg, Exception e) {
    print("onHttpError  id=$id, errcode=$errCode, $errMsg=$errMsg");
  }

  @override
  bool onHttpOK(int id, int code, String msg, dynamic res) {
    print("onHttpOK  id=$id, errcode=$code, msg=$msg");
    switch (id) {
      case HttpLogin:
        print("处理HttpLogin 返回的逻辑");
        break;
      case HttpLogin2:
        print("处理HttpLogin2 返回的逻辑");
        login = Login.fromJson(res);
        body = res.toString();
        name = login.name;
        phone = login.phone;
        state.setState(() {
          //刷新界面数据

        });
        print("login.key=" + login.key + "login.name=" + login.name);
        break;
    }
    return true;
  }
}
