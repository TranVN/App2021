import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../BangGiaCoHinh.dart';
import '../contentApp.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/thongNghet/';

class BangGiaThongNghet extends StatefulWidget {
  @override
  _BangGiaThongNghetState createState() => _BangGiaThongNghetState();
}

class _BangGiaThongNghetState extends State<BangGiaThongNghet> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: ListView(
        children: <Widget>[Container(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        width: sizeWidth*96,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Bảng Giá Thông Nghẹt',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      BangGiaCoHinh(
                        urlimg: url +
                            'lavabo-bi-nghet-va-day-la-cach-thong-tac-cuc-de-dang-1_800x400-1.jpg',
                        gia: 'Giá: 250.000đ - 350.000đ',
                        titleBG: 'Thông nghẹt Lavabo',
                      ),
                      BangGiaCoHinh(
                        urlimg: url + 'BonRuaChen.png',
                        titleBG: 'Thông nghẹt Chậu Rửa Chén',
                        gia: 'Giá: 350.000đ - 450.000đ',
                      ),
                      BangGiaCoHinh(
                        urlimg: url +
                            'tho-thong-cau-cong-nuoc-bi-tac-nghet-tai-quan-12-2.jpg',
                        titleBG: 'Thông nghẹt Thoát Sàn Toilet',
                        gia: 'Giá: 450.000đ - 550.000đ',
                      ),
                      BangGiaCoHinh(
                        urlimg: url +
                            'fix_cach-thong-bon-cau-bi-tac-nghet-bang-day-lo-xo.jpg',
                        titleBG: 'Thông nghẹt bồn cầu',
                        gia: 'Giá: 350.000đ - 550.000đ',
                      ),
                      BangGiaCoHinh(
                        urlimg: url + 'thong-cau-cong-bi-tac-nghet-tai-nha-quan-31.jpg',
                        titleBG: 'Thông nghẹt cống thoát nước',
                        gia: 'Khảo sát báo giá miễn phí!',
                      ),
                      ActionCardButton(),
                      ContentApp(
                        titleCTA: 'Dịch vụ thông nghẹt của Thợ Việt bao gồm:',
                        textCTA: '– Thông cầu nghẹt, thông cống nghẹt, thông ống thoát nước.\n' +
                            '– Thông nghẹt toilet, bể phốt, chậu rửa, thoát sàn, các loại đường cống ngầm.\n' +
                            '– Lắp đặt hệ thống ngăn mùi, xử lý triệt để mùi hôi nhà vệ sinh.',
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Thợ Việt có đội ngũ kỹ thuật viên nhiệt tình chu đáo, phong cách làm việc chuyên nghiệp và các máy móc hiện đại, đảm bảo mang đến cho khách hàng những dịch vụ tốt nhất với giá thành rẻ nhất. Khách hàng có thể hoàn toàn yên tâm khi sử dụng dịch vụ của Thợ Việt.\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
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
