import 'package:appthoviet/ViewModels/ActionCard.dart';
import 'package:appthoviet/Views/login/OTP.dart';
import 'package:appthoviet/Views/login/dangKy.dart';
import 'package:appthoviet/Views/login/dangNhap.dart';
import 'package:appthoviet/Views/login/login_OTP.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:appthoviet/Views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_version/new_version.dart';
import 'Views/datLich.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  // Khong cho xoay ngang man hinh.............
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
  // });
  runApp(MyApp());
}

/// This is the main application widget.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTY TNHH Dịch Vụ Kỹ Thuật Thợ Việt',
      home: MainScreen(),
      theme: ThemeData(
        primaryColor: Colors.green[600],
        scaffoldBackgroundColor: Colors.green[50],
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 15.0,
            fontFamily: 'arial',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget  {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState()  {
    super.initState();

    // final NewVersion newVersion = NewVersion(context: context);
    // VersionStatus versionStatus = await newVersion.getVersionStatus();
    // thong bao cho nguoi dung cap nhat sau khi app duoc update...
    NewVersion(
      updateText: 'Đồng ý',
      dismissText: 'Hủy',
      dialogTitle: 'Cập nhật ứng dụng',
      dialogText: 'Hiện tại ứng dụng đã cập nhật phiên bản mới nhất. Vui lòng tải ứng dụng để trải nghiệm tiện ích mới.',
      context: context,
      androidId: 'com.thoviet.appKH',
      // iOSId: 'com.thoviet.appKH', test
    ).showAlertIfNecessary();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  // void versionCheck() async {
  //   final NewVersion newVersion = NewVersion(context: context);
  //   VersionStatus versionStatus = await newVersion.getVersionStatus();
  //   if (versionStatus != null && versionStatus.canUpdate) {
  //     await ConfirmDialog(
  //         context: context,
  //         title: 'Update Available',
  //         body: Text('A new version, ${versionStatus.storeVersion}, is available.'),
  //         acceptButton: 'Update Now',
  //         cancelButton: 'Update Later'
  //     ).then((ConfirmAction res) async {
  //       if (res == ConfirmAction.CONFIRM && await canLaunch(versionStatus.appStoreLink)) {
  //         await launch(versionStatus.appStoreLink, forceWebView: false);
  //       }
  //     });
  //   }
  // }
  void checkVersion() async {
    final NewVersion newVersion = NewVersion(context: context);
    VersionStatus versionStatus = await newVersion.getVersionStatus();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width;
    double sizeHeight = size.height;
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: new Scaffold(
          body:  Builder(
              builder: (BuildContext context) {
                return OfflineBuilder(
                  connectivityBuilder: (
                      BuildContext context,
                      ConnectivityResult connectivity,
                      Widget child,
                      ) {
                    final bool connected =
                        connectivity != ConnectivityResult.none;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        child,
                        Positioned(
                            left: 0.0,
                            right: 0.0,
                            height: 950,
                            top: 30,
                            child: AnimatedContainer(
                              duration: const Duration(microseconds: 300),
                              color: connected
                                  ? null
                                  : Color.fromRGBO(255, 255, 255, 1),
                              child: connected
                                  ? null
                                  : Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 120),
                                    child: Text(
                                      'Bạn chưa có kết nối internet vui lòng bật kết nối dữ liệu hoặc wifi....',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red[700],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 4,
                                      valueColor:
                                      AlwaysStoppedAnimation<Color>(
                                          Colors.blue),
                                    ),
                                  ),
                                  ActionCallOnly(),
                                ],
                              ),
                            ))
                      ],
                    );
                  },
                  child: Center(
                    child: Callmain(),
                  ),
                );
              },
            ),

        ));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
                title: new Text('Thoát ứng dụng?'),
                actions: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text("Không"),
                  ),
                  SizedBox(height: 16),
                  RaisedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("Có"),
                  ),
                ]));
  }
}

class Callmain extends StatefulWidget {
  @override
  _CallmainState createState() => _CallmainState();
}

class _CallmainState extends State<Callmain> {
  Future<void> _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 42,
        //   elevation: 0,
        //   actions: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.all(5.0),
        //       child: OutlineButton.icon(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10)),
        //         borderSide: BorderSide(color: Colors.white, width: 2),
        //         onPressed: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => DatLich(),
        //   ),
        // );
        //         },
        //         icon: Icon(
        //           Icons.add,
        //           size: 18,
        //           color: Colors.white,
        //         ),
        //         label: Text(
        //           "Đặt lịch ",
        //           style: TextStyle(fontSize: 15, color: Colors.white),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Container(
        //           color: Colors.blue,
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: <Widget>[
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Card(
        //                     elevation: 10,
        //                     shape: RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.circular(50.0),
        //                       side: BorderSide(
        //                         color: Colors.grey,
        //                         width: 3.0,
        //                       ),
        //                     ),
        //                     child: Padding(
        //                       padding: EdgeInsets.all(10),
        //                       child: Icon(
        //                         Icons.person,
        //                         color: Colors.grey[500],
        //                         size: 60,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               Padding(
        //                 padding:
        //                     EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Text(
        //                       'Nguyen Tran Van A',
        //                       textAlign: TextAlign.left,
        //                       style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontSize: 18,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                     Padding(padding: EdgeInsets.all(2)),
        //                     Text(
        //                       'Sđt: 0947777777',
        //                       textAlign: TextAlign.left,
        //                       style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontStyle: FontStyle.italic,
        //                         fontSize: 12,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                     Padding(padding: EdgeInsets.all(2)),
        //                     Text(
        //                       'Quận/huyện: Bình Thạnh',
        //                       textAlign: TextAlign.left,
        //                       style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontStyle: FontStyle.italic,
        //                         fontSize: 12,
        //                         color: Colors.black,
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        //         decoration: BoxDecoration(
        //           color: Colors.blue,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 10),
        //         child: Column(
        //           children: [
        //             ListTile(
        //               title: Text('Thông tin cá nhân'),
        //               onTap: () {
        //                 Navigator.of(context).pop();
        //                 Navigator.of(context).push(MaterialPageRoute(
        //                   builder: (context) => InFoCus(),
        //                 ));
        //               },
        //             ),
        //             Divider(
        //               height: 1,
        //             ),
        //             ListTile(
        //               title: Text('Lịch sử'),
        //               onTap: () {
        //                 Navigator.of(context).pop();
        //                 // Navigator.of(context).push(MaterialPageRoute(
        //                 //   builder: (context) => HomeScreen(),
        //                 // ));
        //               },
        //             ),
        //             Center(
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     vertical: 20.0, horizontal: 15.0),
        //                 child: Container(
        //                   height: 40,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(30.0),
        //                     color: Colors.green,
        //                   ),
        //                   padding: EdgeInsets.symmetric(
        //                       vertical: 3.0, horizontal: 10.0),
        //                   child: FlatButton(
        //                     onPressed: () {
        //                       Navigator.of(context).pushReplacement(
        //                           MaterialPageRoute(
        //                               builder: (context) => DangNhap()));
        //                     },
        //                     textColor: Colors.white,
        //                     child: Text(
        //                       'Đăng Xuất',
        //                       style: TextStyle(
        //                           fontSize: 17, fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        body: LoginOTP(),

      ),
    );
  }


}
