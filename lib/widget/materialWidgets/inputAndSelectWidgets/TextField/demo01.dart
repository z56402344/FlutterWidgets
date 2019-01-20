import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Demo01 extends StatelessWidget {
  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Container(
//        color: Colors.pink,
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
  }

  void _login() {
    print({'手机号': phoneController.text, '密码': passController.text});
    phoneController.clear();
  }
}
