import 'dart:convert';
import 'dart:async';
import 'package:connectivity/connectivity.dart';

import '../main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dropdownfield/dropdownfield.dart';
import 'package:date_form_field/date_form_field.dart';
import 'package:intl/intl.dart';

enum IndicatorType {overscroll, refresh}

class DatLich extends StatefulWidget {
  @override
  _DatLichState createState() => _DatLichState();
}

class _DatLichState extends State<DatLich> {
  //  refresh

  //  refresh

  bool iswificonnected = false;
  bool isInternetOn = true;
  void initState() {
    super.initState();
    getConnect(); // calls getconnect method to check which type if connection it
  }

  void getConnect() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        isInternetOn = false;
      });
    } else if (connectivityResult == ConnectivityResult.mobile) {
      iswificonnected = false;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      iswificonnected = true;
    }
  }

  //internet check
  final _formKey = GlobalKey<FormState>();
  TextEditingController yccvControll = TextEditingController();
  String get yccvCont => yccvControll.text;
  TextEditingController tenControll = TextEditingController();
  String get tenCont => tenControll.text;
  TextEditingController sdtControll = TextEditingController();
  String get sdtCont => sdtControll.text;
  TextEditingController quanControll = TextEditingController();
  String get quanCont => quanControll.text;
  TextEditingController diaChiControll = TextEditingController();
  String get diaChiCont => diaChiControll.text;
  TextEditingController ngayDatControll = TextEditingController();
  String get dateCont => ngayDatControll.text;
  TextEditingController ghiChuControll = TextEditingController();
  String get ghiChuCont => ghiChuControll.text;

  // static final DateTime now = DateTime.now();
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd-MM-yyy');
  final String formatted = formatter.format(now);

  String selectedValuedQuan = "Quận 1";

  insertMethod() async {
    String theUrl =
        "http://data.thoviet.net/pages/mobile/khach_app/data/insertData.php";
    var res = await http.post(
      Uri.encodeFull(theUrl),
      headers: {"Accept": "application/json"},
      body: {
        "yccvCont": yccvCont,
        "tenCont": tenCont,
        "sdtCont": sdtCont,
        "quanCont": quanCont,
        "diaChiCont": diaChiCont,
        "dateCont": dateCont,
        "ghiChuCont": ghiChuCont,
      },
    );
    var respBody = json.decode(res.body);
    print(respBody);
    print(now);
  }

  // ngay book

  DateTime initialDate = DateTime.now();
  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime(2100);
  Future<DateTime> showPicker() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (date == null) {
      return initialDate;
    }
    return date;
  }

  buildAlertDialog() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 230),
        child: Card(
          elevation: 15,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bạn chưa có kết nối internet vui lòng bật kết nối dữ liệu hoặc wifi....',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text(
                      'ĐẶT LỊCH',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Divider(),
                    GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      childAspectRatio: 2.6,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorHeight: 20,
                            controller: tenControll,
                            decoration: InputDecoration(
                              labelText: 'Tên',
                              hintText: 'Vd: A. Tam, C. Ngoc,...',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: TextFormField(
                            controller: sdtControll,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Không được để trống đâu!';
                              } else if (value.length < 9 ||
                                  value.length > 12) {
                                return 'SĐT không đúng';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'Số điện thoại',
                              hintText: 'Vd: 0903.532.938',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: TextFormField(
                        enableSuggestions: true,
                        controller: yccvControll,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Quên nhập yêu cầu rồi nè!';
                          } else if (value.length < 3) {
                            return 'Tên Phải dài hơn 3 ký tự';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Yêu cầu công việc',
                          hintText: 'Vd: Sửa ống nước, sửa tủ lạnh,.v.v..',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      childAspectRatio: 2.6,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: TextFormField(
                            controller: diaChiControll,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Bạn quên nhập địa chỉ rồi!';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Địa chỉ',
                              hintText: 'Vd: 184 Nguyến Xí, p26',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 5,
                          ),
                          child: DateFormField(
                            format: 'yyyy-MM-dd',
                            controller: ngayDatControll,
                            showPicker: showPicker,
                            // initialValue: initialDate.toString(),
                            decoration: InputDecoration(
                              labelText: formatted,
                              hintText:
                                  'Mặc định là ngày hôm nay : ' + formatted,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[600],
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: DropDownField(
                            controller: quanControll,
                            hintText: "Chọn quận/ huyện",
                            enabled: true,
                            items: quan,
                            onValueChanged: (value) {
                              setState(
                                () {
                                  selectedValuedQuan = value;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorHeight: 20,
                        controller: ghiChuControll,
                        decoration: InputDecoration(
                          labelText: 'Ghi Chú',
                          hintText: 'Vd: 10h thợ qua, mang thêm thang,...',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 5,
                      ),
                      child: Text(
                        '* Quý khách vui lòng kiểm tra đúng thông tin trước khi đặt lịch!',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(1)),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      crossAxisCount: 1,
                      childAspectRatio: 5,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: RaisedButton(
                            elevation: 5,
                            textColor: Colors.white,
                            color: Colors.green[600],
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Container(
                                        height: 140,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.check_box,
                                              color: Colors.green,
                                              size: 60.0,
                                            ),
                                            Text(
                                              "Cảm ơn quý khách hàng đã sử dụng dịch vụ của Thợ Việt!\nNhấn xác nhận để đặt lịch",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        FlatButton(
                                          onPressed: () {
                                            insertMethod();
                                            Navigator.of(context)
                                                .pushAndRemoveUntil(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MyApp()),
                                                    (route) => false);
                                          },
                                          child: Text("Xác nhận"),
                                        )
                                      ],
                                      elevation: 24,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    );
                                  },
                                );
                              } else if (isInternetOn != isInternetOn) {
                                buildAlertDialog();
                              } else {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Bạn đã nhập sai thông tin!'),
                                  ),
                                );
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "ĐẶT LỊCH NGAY",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                    // ],
                    // ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var connectionStatus = Provider.of<ConnectivityStatus>(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Đặt Lịch'),
        ),
        body: SingleChildScrollView(
          child: showContent(),
        ),
      ),
    );
  }
}

List<String> quan = [
  "Quận 1",
  "Quận 2",
  "Quận 3",
  "Quận 4",
  "Quận 5",
  "Quận 6",
  "Quận 7",
  "Quận 8",
  "Quận 9",
  "Quận 10",
  "Quận 11",
  "Quận 12",
  "Quận Thủ Đức",
  "Quận Gò Vấp",
  "Quận Bình Thạnh",
  "Quận Bình Tân",
  "Quận Tân Phú",
  "Quận Phú Nhuận",
  "Quận Tân Bình",
  "Huyện Củ Chi",
  "Huyện Hóc Môn",
  "Huyện Bình Chánh",
  "Huyện Nhà Bè",
];
