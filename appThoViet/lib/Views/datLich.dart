import 'dart:convert';
import 'dart:async';
import 'package:appthoviet/Views/home.dart';
import 'package:appthoviet/Views/search_map/main_map.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoder/geocoder.dart' as pre;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
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
  pre.Address addresResult;
  pre.Coordinates lat;
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

  String selectedValuedQuan = "Qu???n 1";



  insertBooking() async {
    String theUrl =
        "https://data.thoviet.net/pages/mobile/khach_app/data/insertData.php";
    var res = await https.post(
      Uri.encodeFull(theUrl),
      headers: {"Accept": "application/json"},
      body: {
        "yccvCont": yccvCont,
        "tenCont": tenCont,
        "sdtCont": sdtCont,
        "quanCont": quanCont,
        "diaChiCont": addresResult.addressLine,
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
                  'B???n ch??a c?? k???t n???i internet vui l??ng b???t k???t n???i d??? li???u ho???c wifi....',
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
                    GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      childAspectRatio: 2.3,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorHeight: 20,
                            controller: tenControll,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Vui l??ng nh???p t??n';
                              } else if (value.length < 3) {
                                return 'T??n ph???i d??i h??n 3 k?? t???';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'T??n',
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
                                return 'Vui l??ng nh???p s??? ??i???n tho???i';
                              } else if (value.length <= 9 ||
                                  value.length >=12) {
                                return 'S??? ??i???n tho???i kh??ng h???p l???';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'S??? ??i???n tho???i',
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
                          EdgeInsets.only(top: 10,bottom: 15, right: 5, left: 5),
                      child: TextFormField(
                        enableSuggestions: true,
                        controller: yccvControll,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Vui l??ng nh???p y??u c???u c??ng vi???c';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Y??u c???u c??ng vi???c',
                          hintText: 'Vd: S???a ???ng n?????c, s???a t??? l???nh,.v.v..',
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
                      crossAxisCount: 1,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      childAspectRatio: 6,
                      children: [
                        // Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        //   child: TextFormField(
                        //     controller: diaChiControll,
                        //     validator: (String value) {
                        //       if (value.isEmpty) {
                        //         return 'Vui l??ng nh???p ?????a ch???';
                        //       }
                        //       return null;
                        //     },
                        //     decoration: InputDecoration(
                        //       labelText: '?????a ch???',
                        //       hintText: 'Vd: 184 Nguy???n X??, p26',
                        //       contentPadding: EdgeInsets.symmetric(
                        //           vertical: 10, horizontal: 15),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding:EdgeInsets.only(top: 10,bottom: 10, right: 5, left: 5),
                          child: DateFormField(
                            format: 'yyyy-MM-dd',
                            controller: ngayDatControll,
                            showPicker: showPicker,
                            // initialValue: initialDate.toString(),
                            decoration: InputDecoration(
                              labelText: 'Th???i gian :',
                              hintText:
                                  'M???c ?????nh l?? ng??y h??m nay : ' + formatted,
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
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //     vertical: 10,
                    //     horizontal: 5,
                    //   ),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: Colors.grey[600],
                    //         width: 1,
                    //       ),
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(10),
                    //       child: DropDownField(
                    //         controller: quanControll,
                    //         hintText: "Ch???n qu???n/ huy???n",
                    //         enabled: true,
                    //         items: quan,
                    //         onValueChanged: (value) {
                    //           setState(
                    //                 () {
                    //               selectedValuedQuan = value;
                    //             },
                    //           );
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    ////---------------- D??ng DropDownField ????? l???c list s???n c??, add v??o kho???ng tr???ng... ----------------

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
                    child: ListTile(
                      title: addresResult != null ? Text(addresResult.addressLine) : Text('Vui l??ng ch???n ?????a ch??? :', style: TextStyle(color: Colors.grey[600]),),
                      trailing: Icon(Icons.location_pin, color: Colors.red),
                      onTap: () {
                        Get.to(MainMap()).then((value) {
                          if (value != null) {
                            setState(() {
                              addresResult = value;
                              print(addresResult.addressLine);

                            });
                          }
                        });
                      },
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
                          labelText: 'Ghi Ch??',
                          hintText: 'Vd: 10h th??? qua, mang th??m thang,...',
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
                        '* Qu?? kh??ch vui l??ng ki???m tra ????ng th??ng tin tr?????c khi ?????t l???ch',
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
                                    if(addresResult!=null){
                                      return CupertinoAlertDialog(
                                        title: Text('?????t l???ch th??nh c??ng!!\n'),
                                        content: Text('C???m ??n qu?? kh??ch h??ng ???? s??? d???ng d???ch v??? c???a Th??? Vi???t!\nNh???n x??c nh???n ????? ?????t l???ch'),
                                        actions: [
                                          CupertinoDialogAction(
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                              child: Text('H???y',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.green[600]))),
                                          CupertinoDialogAction(
                                              onPressed: (){
                                                insertBooking();
                                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                                              },
                                              child: Text('X??c nh???n',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.green[600]))),
                                        ],
                                      );
                                      // return AlertDialog(
                                      //   content: Container(
                                      //     height: 140,
                                      //     child: Column(
                                      //       children: [
                                      //         Icon(
                                      //           Icons.check_box,
                                      //           color: Colors.green,
                                      //           size: 60.0,
                                      //         ),
                                      //         Text(
                                      //           "C???m ??n qu?? kh??ch h??ng ???? s??? d???ng d???ch v??? c???a Th??? Vi???t!\nNh???n x??c nh???n ????? ?????t l???ch",
                                      //           textAlign: TextAlign.center,
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold),
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      //   actions: [
                                      //     FlatButton(
                                      //       onPressed: () {
                                      //         insertBooking();
                                      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                                      //       },
                                      //       child: Text("X??c nh???n", style: TextStyle(color: Colors.green[600],fontWeight: FontWeight.w900, fontSize: 17)),
                                      //     )
                                      //   ],
                                      //   elevation: 24,
                                      //   shape: RoundedRectangleBorder(
                                      //     borderRadius: BorderRadius.circular(10),
                                      //   ),
                                      // );
                                    }else{
                                      return CupertinoAlertDialog(
                                        title: Text('Vui l??ng ch???n ?????a ch???'),
                                        actions: [
                                          CupertinoDialogAction(
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                              child: Text('X??c nh???n',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.green[600]))),

                                        ],
                                      );
                                    }
                                  },
                                );
                              } else if (isInternetOn != isInternetOn) {
                                buildAlertDialog();
                              }
                              // else {
                              //   Scaffold.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text('B???n ???? nh???p sai th??ng tin!'),
                              //     ),
                              //   );
                              // }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "?????T L???CH NGAY",
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
          title: Text('?????t L???ch'),
        ),
        body: SingleChildScrollView(
          child: showContent(),
        ),
      ),
    );
  }
}

List<String> quan = [
  "Qu???n 1",
  "Qu???n 2",
  "Qu???n 3",
  "Qu???n 4",
  "Qu???n 5",
  "Qu???n 6",
  "Qu???n 7",
  "Qu???n 8",
  "Qu???n 9",
  "Qu???n 10",
  "Qu???n 11",
  "Qu???n 12",
  "Qu???n Th??? ?????c",
  "Qu???n G?? V???p",
  "Qu???n B??nh Th???nh",
  "Qu???n B??nh T??n",
  "Qu???n T??n Ph??",
  "Qu???n Ph?? Nhu???n",
  "Qu???n T??n B??nh",
  "Huy???n C??? Chi",
  "Huy???n H??c M??n",
  "Huy???n B??nh Ch??nh",
  "Huy???n Nh?? B??",
];
