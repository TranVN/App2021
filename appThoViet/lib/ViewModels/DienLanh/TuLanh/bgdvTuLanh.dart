import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../ctyThoViet.dart';

class BGTuLanh extends StatefulWidget {
  @override
  _BGTuLanhState createState() => _BGTuLanhState();
}

class _BGTuLanhState extends State<BGTuLanh> {
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
                              'Bảng Giá Dịch Vụ Máy Lạnh',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      BangGia(
                        titleCT: 'Sửa board tủ lạnh có dung tích < 220 lít',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '550.000đ – 850.000đ',
                      ),
                      BangGia(
                        titleCT: 'Sửa board tủ lạnh có dung tích > 220 lít',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '	850.000đ – 1200.000đ',
                      ),
                      BangGia(
                        titleCT: 'Sửa board tủ lạnh Inverter hoặc side by side',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '	950,000 - 1.800.000đ',
                      ),
                      BangGia(
                        titleCT: 'Hàn ống đồng + nạp gas tủ 120 – 140 lít',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '700,000đ',
                      ),
                      BangGia(
                        titleCT: 'Hàn ống đồng + nạp gas tủ > 140 lít (Gas 600A)',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: 'Nhân công: 1,600,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Quạt tủ lạnh board',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '900,000 đ - 1,200,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Quạt tủ lạnh cơ',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '450,000 đ - 650,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Sơn 2 cánh tủ lạnh thường',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '600.000 đ -1.000.000 đ ',
                      ),
                      BangGia(
                        titleCT: 'Sơn cánh tủ lạnh side by side',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '1.000.000 đ - 1.500.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay ron tủ lạnh (trắng)',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '270.000đ/m',
                      ),
                      BangGia(
                        titleCT: 'Bộ khởi động block (rơ le + themic + tụ…)',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '350,000 đ -550,000 đ',
                      ),
                      BangGia(
                        titleCT: '	Thermostat (cảm biến nhiệt độ)',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '	550,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Điện trở',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '350.000đ – 450.000đ',
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
