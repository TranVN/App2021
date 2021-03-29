import 'package:appthoviet/constant/size_screen_config.dart';
import 'package:flutter/material.dart';

import 'OTP.dart';


class LoginOTP extends StatefulWidget {
  String phone;
  LoginOTP({this.phone});
  @override
  _LoginOTPState createState() => _LoginOTPState();
}

class _LoginOTPState extends State<LoginOTP> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Column(children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.heightScreen*15),
              child: Center(
                child: Text(
                  'Xác nhận số điện thoại',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.widthScreen*7),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: SizeConfig.heightScreen*1),
              child: Center(
                child: Text(
                  'Vui lòng nhập số điện thoại của quý khách',
                  style: TextStyle(color: Colors.grey[700] ,fontWeight: FontWeight.bold, fontSize: SizeConfig.widthScreen*3),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.heightScreen*6, right: SizeConfig.widthScreen*10, left: SizeConfig.widthScreen*10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+84'),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.heightScreen*7),
            width: SizeConfig.widthScreen * 80,
            height: SizeConfig.heightScreen * 7,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green[600], Colors.green[600]],
                  end: Alignment.topRight,
                  begin: Alignment.topCenter),
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPScreen(_controller.text)));
              },
              child: Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.white)
              ),
            ),
          )
        ],
      ),
    );
  }
}