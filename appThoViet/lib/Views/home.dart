import 'dart:convert';

import 'package:appthoviet/Views/MayLanh.dart';
import 'package:appthoviet/Views/login/dangKy.dart';
import 'package:appthoviet/Views/login/dangNhap.dart';
import 'package:appthoviet/Views/login/login_OTP.dart';
import 'package:appthoviet/Views/mayTamNong.dart';
import 'package:appthoviet/Views/vsBeNuoc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Views/thoDienNuoc.dart';
import '../Views/thoNLMT.dart';
import "package:flutter/material.dart";
import 'MayGiat.dart';
import 'datLich.dart';
import 'thoChongTham.dart';
import 'suaDien.dart';
import 'thoMoc.dart';
import 'thongNghet.dart';
import 'thiCongDien.dart';
import 'thoSuaMayLanh.dart';
import 'thoSuaNha.dart';
import 'tuLanh.dart';
import 'vsBonNuoc.dart';
import 'thoDoNuocRoRi.dart';
import 'xayDung.dart';

import 'package:http/http.dart' as https;

var url = 'lib/images/';
var urlImgBanner = 'https://data.thoviet.net/';
// var urlImgBanner = 'http://192.168.1.15/dashboard_app/';

// Future<BannerImg> _fetchBanner() async {
//   final response = await http
//       .get(urlImgBanner + 'pages/mobile/khach_app/data/getBanner.php');
//   final resp = jsonDecode(response.body);
//   return BannerImg.fromJson(resp);

//   // if (response.statusCode == 200) {
//   //   // If the server did return a 200 OK response,
//   //   // then parse the JSON.
//   //   return BannerImg.fromJson(jsonDecode(response.body));
//   // } else {
//   //   // If the server did not return a 200 OK response,
//   //   // then throw an exception.
//   //   throw Exception('Failed to load album');
//   // }
// }

class BannerImg {
  final String urlImg;

  BannerImg({this.urlImg});

  factory BannerImg.fromJson(Map<String, dynamic> json) {
    return BannerImg(
      urlImg: json['image'].toString(),
    );
  }
}

Future<List<BannerImg>> getProductList() async {
  print("comes");
  String productURl =
      urlImgBanner + 'pages/mobile/khach_app/data/getBanner.php';

  final response =
      await https.get(productURl, headers: {"Content-Type": "application/json"});
  List jsonResponse = json.decode(response.body);
  print(jsonResponse);
  return jsonResponse.map((job) => new BannerImg.fromJson(job)).toList();
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeStateWidget();
}

class HomeStateWidget extends State<HomePage> {
  // Future futureAlbum;

  // @override
  // void initState() {
  //   super.initState();
  //   futureAlbum = _fetchBanner();
  // }

  Widget titleSection = ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    child: Image.asset(
      url + 'tapthecty.png',
      fit: BoxFit.cover,
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double widthScreen = size.width / 100;
    double heightScreen = size.height / 100;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[50],
        drawer: Drawer(
          child: Scaffold(
            backgroundColor: Colors.green[100],
            appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              toolbarHeight: heightScreen*10,
              title: Text('MENU',style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w900),),
            ),
            body: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person_outline_sharp),
                  title: Text('Tài khoản'),
                  onTap: () {},
                ),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Cài đặt'),
                  onTap: () {},
                ),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DatLich()));
                  },
                    leading: Icon(Icons.wysiwyg_sharp),
                    title: Text('Đặt lịch')),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                    leading: Icon(Icons.menu_book),
                    title: Text('Lịch sử sửa chữa')),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                  leading: Icon(Icons.person_add),
                  title: Text('Đăng kí'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => LoginOTP()));
                  },
                ),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('Đăng nhập'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => DangNhap()));
                  },
                ),
                Divider(height: 1,color: Colors.grey[500]),
                ListTile(
                    leading: Icon(Icons.lock_outline_sharp),
                    title: Text('Đăng xuất'))
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Trang chủ'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              titleSection,
              SizedBox(
                height: 5,
              ),
              Card(
                color: Colors.green[600],
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: heightScreen * 1.5,
                      horizontal: widthScreen * 2),
                  child: Text(
                    'DỊCH VỤ CỦA THỢ VIỆT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              GridView.count(
                primary: false,
                padding: EdgeInsets.symmetric(
                    vertical: heightScreen * 0.5,
                    horizontal: widthScreen * 0.5),
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: widthScreen * 1 / heightScreen * 1.7,
                shrinkWrap: true,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _dVThoDienkhac(context);
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoDien.png',
                        titleDVTV: 'Thợ Điện',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _dVThoDienLanhkhac(context);
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoDL.png',
                        titleDVTV: 'Điện Lạnh',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThoDienNuoc(),
                          // builder: (context) => ExampleForm(),
                        ),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoNuoc.png',
                        titleDVTV: 'Ống Nước',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThoMoc()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoMoc.png',
                        titleDVTV: 'Thợ Mộc',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThoThongNghet()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoThongNghet.png',
                        titleDVTV: 'Thông Tắc',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThoChongTham()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'chongTham.png',
                        titleDVTV: 'Chống Thấm',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoNuocRoRi()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoDoRoRi.png',
                        titleDVTV: 'Dò Nước',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _dVVSBonNuockhac(context);
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'veSinh.png',
                        titleDVTV: 'Vệ Sinh',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabBarNLMT()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoPMT.png',
                        titleDVTV: 'NL Mặt Trời',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThoSuaNha()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'thoSuaNha.png',
                        titleDVTV: 'Sửa Nhà',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => XayDung()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'xayDung.png',
                        titleDVTV: 'Xây Dựng',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _dVkhac(context);
                    },
                    splashColor: Colors.green[200],
                    child: Center(
                      child: DVTV(
                        urlDVTV: url + 'dvKhac.png',
                        titleDVTV: 'Thợ Khác',
                      ),
                    ),
                  ),
                ],
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //   child: Container(
              //     height: 150,
              //     child: FutureBuilder(
              //         future: futureAlbum,
              //         builder: (context, snapshot) {
              //           if (snapshot.hasData) {
              // return Image.network(
              //   urlImgBanner + '${(snapshot.data.urlImg)}',
              //   fit: BoxFit.fill,
              // );
              //           } else {
              //             return Center(child: CircularProgressIndicator());
              //           }
              //         }),
              //   ),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Container(
                  height: heightScreen * 18,
                  child: FutureBuilder<List<BannerImg>>(
                    future: getProductList(),
                    builder: (context,snapshot) {
                      print("snapshot");
                      print('${snapshot.data} + aaaaaaaaaaaaaaa');
                      if (snapshot.hasData) {
                        return Container(
                          width: 500,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int i) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  child: Image.network(
                                    urlImgBanner +
                                        '${(snapshot.data[i].urlImg)}',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text("Lỗi server");
                      }

                      // By default, show a loading spinner.
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                color: Colors.green[600],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    'Giảm giá 10% nhân công\ncho dịch vụ sửa điện nước hộ gia đình!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              Image.asset(
                url + 'phieuGiamGia.jpg',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              launch('tel:0903532938');
            });
          },
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.green[600],
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              OutlineButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
                borderSide: BorderSide(color: Colors.white, width: 2),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DatLich(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.today,
                  size: 18,
                  color: Colors.white,
                ),
                label: Text(
                  "Đặt lịch ",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _dVkhac(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        clipBehavior: Clip.none,
        color: Color(0xFF737373),
        height: MediaQuery.of(context).size.height/100*40,
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
                      child: Divider(
                        height: 15.0,
                        color: Colors.grey[300],
                        indent: 5.0,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Khám phá dịch vụ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.95,
                      shrinkWrap: true,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThoSuaMayLanh()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTV(
                              urlDVTV: url + 'thoSuaML.png',
                              titleDVTV: 'Máy Lạnh',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}

void _dVThoDienkhac(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        clipBehavior: Clip.none,
        color: Color(0xFF737373),
        height: MediaQuery.of(context).size.height/100*40,
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
                      child: Divider(
                        height: 15.0,
                        color: Colors.grey[300],
                        indent: 5.0,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Dịch Vụ Điện',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.95,
                      shrinkWrap: true,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThiCongDien()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVD(
                              urlDVTVD: url + 'thiCongDien.png',
                              titleDVTVD: 'Thi Công Điện',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuaDien()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVD(
                              urlDVTVD: url + 'suaDien.png',
                              titleDVTVD: 'Sửa Điện',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}

void _dVThoDienLanhkhac(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        clipBehavior: Clip.none,
        color: Color(0xFF737373),
        height: MediaQuery.of(context).size.height/100*40,
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
                      child: Divider(
                        height: 15.0,
                        color: Colors.grey[300],
                        indent: 5.0,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Dịch Vụ Điện Lạnh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.95,
                      shrinkWrap: true,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MayLanh()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVDL(
                              urlDVTVDL: url + 'mayLanh.png',
                              titleDVTVDL: 'Máy Lạnh',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => TuLanh()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVDL(
                              urlDVTVDL: url + 'tuLanh.png',
                              titleDVTVDL: 'Tủ Lạnh',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MayGiat()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVDL(
                              urlDVTVDL: url + 'mayGiat.png',
                              titleDVTVDL: 'Máy Giặt',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MayTamNong()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVDL(
                              urlDVTVDL: url + 'mayTamNong.png',
                              titleDVTVDL: 'Máy Tắm',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}

void _dVVSBonNuockhac(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        clipBehavior: Clip.none,
        color: Color(0xFF737373),
        height: MediaQuery.of(context).size.height/100*40,
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
                      child: Divider(
                        height: 15.0,
                        color: Colors.grey[300],
                        indent: 5.0,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Dịch Vụ Vệ Sinh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.95,
                      shrinkWrap: true,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VSBonNuoc()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVD(
                              urlDVTVD: url + 'vsBonNuoc.png',
                              titleDVTVD: 'VS Bồn Nước',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VSBeNuoc()),
                            );
                          },
                          splashColor: Colors.green[200],
                          child: Center(
                            child: DVTVD(
                              urlDVTVD: url + 'vsbn.png',
                              titleDVTVD: 'VS Bể Ngầm',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}

class DVTV extends StatelessWidget {
  DVTV({this.urlDVTV, this.titleDVTV});

  final String urlDVTV;
  final String titleDVTV;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width / 100;
    double sizeHeight = size.height / 100;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Image.asset(
            urlDVTV,
            width: sizeWidth * 15.5,
            height: sizeHeight * 8,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          titleDVTV,
          style:
              TextStyle(fontSize: sizeWidth * 2.5, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DVTVDL extends StatelessWidget {
  DVTVDL({this.titleDVTVDL, this.urlDVTVDL});

  final String urlDVTVDL;
  final String titleDVTVDL;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Image.asset(
              urlDVTVDL,
              width: 30,
              height: 35,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          titleDVTVDL,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DVTVD extends StatelessWidget {
  DVTVD({this.titleDVTVD, this.urlDVTVD});

  final String urlDVTVD;
  final String titleDVTVD;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              urlDVTVD,
              width: 38,
              height: 38,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          titleDVTVD,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
