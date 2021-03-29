import 'package:appthoviet/Views/login/dangKy.dart';
import 'package:appthoviet/constant/size_screen_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pin_put/pin_put.dart';

import 'home_OTP.dart';

class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen(this.phone);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String _verificationCode;
  TextEditingController _controller = TextEditingController();
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color:Colors.grey,
    ),
  );
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[50],
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black87,),onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.heightScreen*10),
            child: Center(
              child: Text(
                'Xác nhận OTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.widthScreen*7),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.heightScreen*1),
            child: Center(
              child: Text(
                'Chúng tôi đã gửi mã của bạn đến số điện thoại +84${widget.phone}',
                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold,fontSize: SizeConfig.widthScreen*3),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.heightScreen*1),
            child: Center(
              child: Text(
                'Vui lòng nhập mã...',
                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold,fontSize: SizeConfig.widthScreen*3),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightScreen*10,
          ),
          Padding(
            padding:  EdgeInsets.only(right: SizeConfig.widthScreen*6,left: SizeConfig.widthScreen*6, top: SizeConfig.heightScreen*1),
            child: PinPut(
              fieldsCount: 6,
              textStyle:  TextStyle(fontSize: 25.0, color: Colors.black87,fontWeight: FontWeight.bold),
              eachFieldWidth: SizeConfig.widthScreen * 6,
              eachFieldHeight: SizeConfig.heightScreen*4,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.fade,
              onSubmit: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                      verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  DangKy(user: widget.phone,)));
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState
                      .showSnackBar(SnackBar(content: Text('Mã OTP không hợp lệ')));
                }
              },
            ),
          ),
          // Container(
          //   width: SizeConfig.widthScreen * 65,
          //   height: SizeConfig.heightScreen * 7,
          //
          //   margin: EdgeInsets.only(top: SizeConfig.heightScreen*20),
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [Colors.green[600], Colors.green[600]],
          //         end: Alignment.topRight,
          //         begin: Alignment.topCenter),
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          //   child: Center(
          //     child: FlatButton(
          //       child: Text(
          //         'Xác nhận',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: SizeConfig.widthScreen * 4,
          //             fontWeight: FontWeight.w900),
          //       ),
          //       onPressed: () async {
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(

        phoneNumber: '+84${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                      (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }
}