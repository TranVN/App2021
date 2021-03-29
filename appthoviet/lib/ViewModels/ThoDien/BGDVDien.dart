import 'package:appthoviet/ViewModels/ctyThoViet.dart';
import 'package:flutter/material.dart';

import '../ActionCard.dart';

var url = 'lib/images/thoDien/';

class BGDVDien extends StatefulWidget {
  @override
  _BGDVDienState createState() => _BGDVDienState();
}

class _BGDVDienState extends State<BGDVDien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[SizedBox(height: 10), Container(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 400,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Bảng Giá Nhân Công Sửa Điện',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'sua-o-dien-bi-long-3.png',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: const Text('Sửa chập điện âm tường',
                                  style: TextStyle(
                                      color: Colors.indigoAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                'Giá: Khảo sát báo giá',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.redAccent, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'thaybongden.jpg',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: const Text('Sửa bóng đèn (thay tăng phô, chuột)',
                                  style: TextStyle(
                                      color: Colors.indigoAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                'Giá: 150.000đ - 200.000đ(Giảm giá theo số lượng)',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.redAccent, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'lapbongden.jpg',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: const Text('Thay bóng đèn (Huỳnh quang, compact)',
                                  style: TextStyle(
                                      color: Colors.indigoAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                'Giá: 100.000đ - 150.000đ(Giảm giá theo số lượng)',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.redAccent, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'thayodien.jpg',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: const Text('Thay ổ cắm nổi',
                                  style: TextStyle(
                                      color: Colors.indigoAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                'Giá: 100.000đ - 150.000đ(Giảm giá theo số lượng)',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.redAccent, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CTYThoViet()
                    ],
                  ))
            ],
          ),
        )],
      ),
    );
  }
}
