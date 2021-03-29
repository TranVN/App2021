import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../ctyThoViet.dart';

var url = 'lib/images/thoDien/';

class BGMayGiat extends StatefulWidget {
  @override
  _BGMayGiatState createState() => _BGMayGiatState();
}

class _BGMayGiatState extends State<BGMayGiat> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
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
                        width: sizeWidth*96,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Bảng Giá Dịch Vụ Máy Lạnh',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      BangGia(
                        titleCT: 'Dây cấp nước',
                        contentCT: 'Giá vật tư: 120.000 đ',
                        subtitleCT: 'Nhân công: 80.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay van cấp đơn',
                        contentCT: 'Giá vật tư: 250.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay van cấp đôi',
                        contentCT: 'Giá vật tư: 380.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay phao cảm biến',
                        contentCT: 'Giá vật tư: 350.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay motor xả',
                        contentCT: 'Giá vật tư: 380.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay hộp số',
                        contentCT: 'Giá vật tư: 650.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay dây dai',
                        contentCT: 'Giá vật tư: 60.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay môtơ máy giặt',
                        contentCT: 'Giá vật tư: 450.000 đ',
                        subtitleCT: 'Nhân công: 100.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay trục lồng giặt (tùy hãng)',
                        contentCT: 'Giá vật tư: 500.000 đ - 1.000.000 đ',
                        subtitleCT: 'Nhân công: 300.000 đ',
                      ),
                      BangGia(
                        titleCT:
                        'Cuộn dây & mâm từ máy giặt Sanyo Inverter - Aqua - Haier loại trên 10kg',
                        contentCT: 'Giá vật tư: 430.000 đ',
                        subtitleCT: 'Nhân công: 200.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Công tắc cửa máy giặt LG loại 4 dây mẫu 3',
                        contentCT: 'Giá vật tư: 310.000 nđ',
                        subtitleCT: 'Nhân công: 150.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Van cấp nước đôi máy giặt Toshiba',
                        contentCT: 'Giá vật tư: 230.000 đ',
                        subtitleCT: 'Nhân công: 150.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Bản lề cửa máy giặt LG lồng ngang',
                        contentCT: 'Giá vật tư: 210.000 đ',
                        subtitleCT: 'Nhân công: 150.000 đ',
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
