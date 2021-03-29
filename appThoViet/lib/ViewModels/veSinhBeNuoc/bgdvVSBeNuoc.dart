import 'package:flutter/material.dart';

import '../ctyThoViet.dart';

var url = 'lib/images/doNuocRoRi/';

class BGVSBeNuoc extends StatefulWidget {
  @override
  _BGVSBeNuocState createState() => _BGVSBeNuocState();
}

class _BGVSBeNuocState extends State<BGVSBeNuoc> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Text(
                  'Mọi thông tin chi tiết xin vui lòng liên hệ hotline: 0903 532 938',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
            CTYThoViet(),
          ],
        ))
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[titleSection],
      ),
    );
  }
}

class BangGiaVSBN extends StatelessWidget {
  BangGiaVSBN({this.titleCT, this.subtitleCT});
  final String titleCT;

  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
              child: new Text(titleCT,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              subtitle: Text(
                subtitleCT,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
