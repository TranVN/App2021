import 'dart:convert';
import 'dart:ui';

import 'package:appthoviet/Views/home.dart';
import 'package:appthoviet/Views/login/dangNhap.dart';
import 'package:appthoviet/Views/login/login_OTP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DangKy extends StatefulWidget {
  String user;
  DangKy({this.user});
  @override
  _DangKyState createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> with SingleTickerProviderStateMixin {


  bool _toggleVisibility = true;
  bool _toggleVisibilityy = true;
  final _formKey = GlobalKey<FormState>();

  String txtSDT;
  String txtPassword;
  String txtConfirmPassword;

  String validateSDT(String value) {
    if (value.isEmpty) {
      return 'Vui lòng nhập số điện thoại';
    }
    // else if (value.length <= 9 || value.length >= 12) {
    //   return 'Số điện thoại không hợp lệ';
    // }

    else {
      txtSDT = value;
    }
    return null;
  }

  String validatePassWord(String value) {
    if (value.isEmpty) {
      return 'Vui lòng nhập mật khẩu';
    } else {
      txtPassword = value;
    }
    return null;
  }

  String validateConfirmPassWord(String value) {
    if (value.isEmpty) {
      return 'Vui lòng nhập lại mật khẩu';
    } else if (value != txtPassword) {
      return 'Vui lòng nhập lại đúng mật khẩu';
    }
    txtConfirmPassword = value;
    return null;
  }


  // ignore: missing_return
  Future<String> registerCustomer(String phone, String pass) async {
    // String url = 'http://192.168.1.15/dashboard_app/pages/mobile/khach_app/login/loginApp.php';
    final apiMap = "http://192.168.1.12/dashboard_app",
        namespace = "/pages/mobile/khach_app/login/registerApp.php";
    var response = await http.post('$apiMap$namespace',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          "phone_cus_app": phone,
          'name_cus_app': '',
          'add_cus_app': '',
          'des_cus_app': '',
          'sex_cus_app': '',
          'email_cus_app': '',
          'birth_day_cus_app': '',
          'string_pass': pass
        }));
    try {
      if (response.statusCode == 200 && response.body != null) {
        final results = response.body;
        print(results);
      }
    } catch (e) {
      return null;
    }
  }

//// ---------- thong bao == AlertDiaLog

  void diaLogRegisterFailed(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Tài khoản đã tồn tại'),
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

  void diaLogRegisterSuccess(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Đăng kí thành công'),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DangNhap()));
                  },
                  child: Text('Xác nhận',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
            ],
          );
        });
  }

//// ---------- thong bao == CupertinoAlertDialog
  void testDiaLogLoginSuccess(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double widthScreen = size.width;
    double heightScreen = size.height;
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Đăng kí thành công!!\n'),
            content: Text('Chuyển sang màn hình đăng nhập'),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Hủy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
              CupertinoDialogAction(
                  onPressed: () async {
                    final apiMap = "http://192.168.1.12/dashboard_app",
                        namespace = "/pages/mobile/khach_app/login/registerApp.php";
                    var response = await http.post('$apiMap$namespace',
                        headers: <String, String>{
                          'Content-Type': 'application/json; charset=UTF-8',
                        },
                        body: jsonEncode(<String, dynamic>{
                          "phone_cus_app": txtSDT,
                          'name_cus_app': '',
                          'add_cus_app': '',
                          'des_cus_app': '',
                          'sex_cus_app': '',
                          'email_cus_app': '',
                          'birth_day_cus_app': '',
                          'string_pass': txtPassword
                        }));
                    try {
                      if (response.statusCode == 200 && response.body != null) {
                        final results = response.body;
                        print(results);
                        if(results == 'true'){
                          print('DANG KY THANH CONG !!!');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DangNhap()));
                        }if(results == 'false'){
                          print('DANG KY THAT BAI !!!');
                          diaLogRegisterFailed(context);
                        }
                      }
                    } catch (e) {
                      return Text('ERORR');
                    }
                    // final data =  await registerCustomer(txtSDT, txtPassword);
                    // print('aaaaaaaaa+$data');
                    // print(txtSDT + txtPassword);
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => DangNhap()));
                  },
                  child: Text('Đồng ý',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]))),
            ],
          );
        });
  }

  Widget _buildUserTextField() {
    return TextFormField(
      enabled: false,
      validator: validateSDT,
      initialValue: '+84${widget.user}',
      keyboardType: TextInputType.phone,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        // -------  Set color boder TextField  -------------
        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green[600])),
        prefixIcon: Icon(Icons.phone),
        labelText: 'Số điện thoại',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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

  Widget _buildCPassTextField() {
    return TextFormField(
      validator: validateConfirmPassWord,
      obscureText: _toggleVisibilityy,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        labelText: 'Nhập lại mật khẩu',
        suffixIcon: IconButton(
          icon: _toggleVisibilityy
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _toggleVisibilityy = !_toggleVisibilityy;
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

  @override
  Widget build(BuildContext context) {
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
                                height: heightScreen * 1,
                              ),
                              _buildPassTextField(),
                              SizedBox(
                                height: heightScreen * 1,
                              ),
                              _buildCPassTextField(),
                              SizedBox(
                                height: heightScreen * 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8),
                                child: Container(
                                  width: widthScreen * 65,
                                  height: heightScreen * 7,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.green[600],
                                          Colors.green[600]
                                        ],
                                        end: Alignment.topRight,
                                        begin: Alignment.topCenter),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: FlatButton(
                                    onPressed: () async {
                                      if (_formKey.currentState.validate()) {
                                        final apiMap = "http://192.168.1.12/dashboard_app",
                                            namespace = "/pages/mobile/khach_app/login/registerApp.php";
                                        var response = await http.post('$apiMap$namespace',
                                            headers: <String, String>{
                                              'Content-Type': 'application/json; charset=UTF-8',
                                            },
                                            body: jsonEncode(<String, dynamic>{
                                              "phone_cus_app": txtSDT,
                                              'name_cus_app': '',
                                              'add_cus_app': '',
                                              'des_cus_app': '',
                                              'sex_cus_app': '',
                                              'email_cus_app': '',
                                              'birth_day_cus_app': '',
                                              'string_pass': txtPassword
                                            }));
                                        try {
                                          if (response.statusCode == 200 && response.body != null) {
                                            final results = response.body;
                                            print(results);
                                            if(results == 'true'){
                                              print('ĐĂNG KÍ THÀNH CÔNG !!!');
                                              diaLogRegisterSuccess(context);
                                            }if(results == 'false'){
                                              print('ĐĂNG KÍ THẤT BẠI !!!');
                                              diaLogRegisterFailed(context);
                                            }
                                          }
                                        } catch (e) {
                                          return Text('ERORR');
                                        }
                                        // final data =  await registerCustomer(txtSDT, txtPassword);
                                        // print('aaaaaaaaa+$data');
                                        // print(txtSDT + txtPassword);
                                        // Navigator.of(context).push(MaterialPageRoute(
                                        //     builder: (context) => DangNhap()));
                                      }
                                    },
                                    child: Text(
                                      'Đăng ký',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: widthScreen * 4,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: heightScreen * 1.5,
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
                                    Text(
                                      'Bạn đã có tài khoản? ',
                                      style: TextStyle(
                                          fontSize: widthScreen * 3.5),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DangNhap()));
                                      },
                                      child: Container(
                                        child: Text(
                                          'Đăng nhập!',
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
                )
              ],
            ),
          ),
        ));
  }
}
