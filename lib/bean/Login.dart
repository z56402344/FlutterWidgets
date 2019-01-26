

class Login{

  String key;
  String phone = "";
  String name = "";
  String passwd;
  String text;
  String img;
  String other;
  String other2;
  String createTime;

  Login({this.key,this.phone,this.name,this.passwd,this.text,this.img});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      key: json['key'],
      phone: json['phone'],
      name: json['name'],
      passwd: json['passwd'],
      text: json['text'],
      img: json['img'],
    );
  }

}