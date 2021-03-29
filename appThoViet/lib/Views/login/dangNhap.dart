import 'dart:convert';
import 'dart:ui';

import 'package:appthoviet/Views/home.dart';
import 'package:appthoviet/Views/login/dangKy.dart';
import 'package:appthoviet/Views/login/login_OTP.dart';
import 'package:appthoviet/constant/size_screen_config.dart';
import 'package:appthoviet/service/api/api_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import 'package:http/http.dart' as http;


class UserLogin {
  final int id;

  UserLogin({this.id});

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return UserLogin(
      id: json['id_cus_app'],
    );
  }
}


class DangNhap extends StatefulWidget {
  @override
  _DangNhapState createState() => _DangNhapState();
}

class _DangNhapState extends State<DangNhap>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool _toggleVisibility = true;
  String txtUser;

  String txtPassWord;


  // ignore: missing_return
  Future<int> loginCustomer(String phone,
      String pass) async {
    final apiMap = "http://192.168.1.12/dashboard_app",
        namespace = "/pages/mobile/khach_app/login/loginApp.php";

    var response = await http.post('$apiMap$namespace',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, dynamic>{"phone_cus_app": phone, 'string_pass': pass}));
    try {
      if (response.statusCode == 200 && response.body != null) {
        final results = json.decode(response.body);
        print('----- KẾT QUẢ : ${results}');
      }
    } catch (e) {
      return null;
    }
  }

  String validateUser(String value) {
    if (value.isEmpty) {
      return 'Vui lòng nhập tài khoản';
    }
    // else if (value.length <= 9 ||
    //     value.length >= 12) {
    //   return 'Tài khoản không hợp lệ';
    // }
    //
    else {
      txtUser = value;
    }
    return null;
  }

  String validatePassWord(String value) {
    if (value.isEmpty) {
      return 'Vui lòng nhập mật khẩu';
    } else {
      txtPassWord = value;
    }
    return null;
  }

  Widget _buildUserTextField() {
    return TextFormField(
      validator: validateUser,
      keyboardType: TextInputType.phone,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Tài khoản',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildPassTextField() {
    return TextFormField(
      validator: validatePassWord,
      obscureText: _toggleVisibility,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        labelText: 'Mật khẩu',
        suffixIcon: IconButton(
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void diaLogLoginFailedUser(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Tài khoản không hợp lệ'),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Xác nhận',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
            ],
          );
        });
  }
  void diaLogLoginFailedPass(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Mật khẩu không chính xác'),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Xác nhận',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
            ],
          );
        });
  }

  void diaLogLoginSuccess(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Đăng nhập thành công'),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage()));
                  },
                  child: Text('Xác nhận',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width / 100;
    double heightScreen = size.height / 100;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green[100],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          right: widthScreen * 2, left: widthScreen * 2),
                      height: heightScreen * 20,
                      // decoration: BoxDecoration(
                      //   gradient: LinearGradient(
                      //       colors: [Colors.green[600], Colors.green[100]],
                      //       end: Alignment.bottomCenter,
                      //       begin: Alignment.topCenter),
                      // ----- bo 1 góc dưới phía trái banner
                      //   borderRadius: BorderRadius.only(
                      //     bottomLeft: Radius.circular(40),
                      //   ),
                      // ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/logoTV.png',
                          width: widthScreen * 25,
                          height: heightScreen * 20,
                        ),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: widthScreen * 2,
                                right: widthScreen * 2,
                                top: heightScreen * 7),
                            child: Column(children: <Widget>[
                              _buildUserTextField(),
                              SizedBox(
                                height: 8,
                              ),
                              _buildPassTextField(),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                alignment: Alignment.centerRight,
                                child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Quên mật khẩu?',
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.w900),
                                    )),
                              ),
                              SizedBox(
                                height: heightScreen * 3,
                              ),
                              Container(
                                width: widthScreen * 65,
                                height: heightScreen * 7,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.green[600],
                                        Colors.green[600]
                                      ],
                                      end: Alignment.topLeft,
                                      begin: Alignment.topCenter),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: FlatButton(
                                  onPressed: () async{
                                    if (_formKey.currentState.validate()) {
                                      final apiMap = "http://192.168.1.12/dashboard_app",
                                          namespace = "/pages/mobile/khach_app/login/loginApp.php";

                                      var response = await http.post('$apiMap$namespace',
                                          headers: <String, String>{
                                            'Content-Type': 'application/json; charset=UTF-8',
                                          },
                                          body: jsonEncode(
                                              <String, dynamic>{"phone_cus_app": txtUser, 'string_pass': txtPassWord}));
                                      try {
                                        if (response.statusCode == 200 && response.body != null) {
                                          final results = json.decode(response.body);
                                          print('-------- KẾT QUẢ : ${results}');
                                          if(results == 1 ){
                                            print('ĐĂNG NHẬP THÀNH CÔNG !!!');
                                            diaLogLoginSuccess(context);
                                          } if(results == -1){
                                            print('SAI MẬT KHẨU !!!');
                                            diaLogLoginFailedPass(context);
                                          } if(results == -2){
                                            print('TÀI KHOẢN KHÔNG HỢP LỆ');
                                            diaLogLoginFailedUser(context);
                                          }
                                        }
                                      } catch (e) {
                                        return null;
                                      }
                                    }
                                  },
                                  child: Text(
                                    'Đăng Nhập',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: widthScreen * 4,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: heightScreen * 2,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Divider(
                                  height: 10,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: heightScreen * 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Bạn chưa có tài khoản? ',
                                        style: TextStyle(
                                            fontSize: widthScreen * 3.5)),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginOTP()));
                                      },
                                      child: Container(
                                        child: Text(
                                          'Đăng kí ngay!',
                                          style: TextStyle(
                                              color: Colors.green[900],
                                              fontWeight: FontWeight.w900,
                                              fontSize: widthScreen * 3.5),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
