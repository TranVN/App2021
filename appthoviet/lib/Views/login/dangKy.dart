import 'dart:ui';

import 'package:appthoviet/Views/login/dangNhap.dart';
import 'package:flutter/material.dart';

class DangKy extends StatefulWidget {
  @override
  _DangKyState createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> with SingleTickerProviderStateMixin {
  bool _toggleVisibility = true;
  Widget _buildUserTextField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Số điện thoại',
          hintText: 'Số điện thoại',
        ),
      ),
    );
  }

  Widget _buildPassTextField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Mật Khẩu',
          hintText: 'Mật Khẩu',
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
        ),
        obscureText: _toggleVisibility,
      ),
    );
  }

  Widget _buildCPassTextField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Xác nhận mật Khẩu',
          hintText: 'Xác nhận mật Khẩu',
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
        ),
        obscureText: _toggleVisibility,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.amber[900], Colors.amber[300]],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'lib/images/logoTV.png',
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(children: <Widget>[
                  _buildUserTextField(),
                  SizedBox(
                    height: 8,
                  ),
                  _buildPassTextField(),
                  SizedBox(
                    height: 8,
                  ),
                  _buildCPassTextField(),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.amber[900], Colors.amber[300]],
                            end: Alignment.topLeft,
                            begin: Alignment.topCenter),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(
                      height: 10,
                      color: Colors.grey[700],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Đã có tài khoản,'),
                        FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => DangNhap()));
                            },
                            child: Text(
                              'đăng nhập!',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                  ),
                ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
