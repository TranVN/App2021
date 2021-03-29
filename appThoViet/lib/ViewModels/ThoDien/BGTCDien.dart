import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/thoDien/';

class BGTCDien extends StatefulWidget {
  @override
  _BGTCDienState createState() => _BGTCDienState();
}

class _BGTCDienState extends State<BGTCDien> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: ListView(
        children: <Widget>[SizedBox(height: 10),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: sizeWidth*96,
                          child: Card(

                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                              child: Text(
                                'Bảng Giá Nhân Công Thi Công Điện',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeHeight*1,
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'tho-lap-dat-dong-ho-dien-1-pha-3-pha-tphcm-1.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              ListTile(
                                title: const Text('Lắp Đồng Hồ Điện',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Giá: 80.000đ - 150.000đ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.redAccent, fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ActionCardButton(),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'tho-lap-bong-den-dien-quan-binh-thanh.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              ListTile(
                                title: const Text('Thay một bộ bóng đèn',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Giá: 80.000đ - 150.000đ',
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
                                url +
                                    'tho-lap-den-led-trang-tri-shop-quan-ao-thoi-trang-4.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              ListTile(
                                title: const Text('Lắp mới đèn lon',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Giá: 80.000đ - 150.000đ',
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
                                url + 'fix_11.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              ListTile(
                                title: const Text('Thi công điện 1 pha âm/nổi',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Báo giá sau khi khảo sát(báo giá miễn phí!)',
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
                                url + 'fix_15.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              ListTile(
                                title: const Text('Thi công điện 3 pha',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Báo giá sau khi khảo sát(báo giá miễn phí!)',
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
