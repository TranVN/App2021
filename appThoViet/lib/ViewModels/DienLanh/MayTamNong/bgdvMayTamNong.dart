import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../ctyThoViet.dart';

class BGTamNong extends StatefulWidget {
  @override
  _BGTamNongState createState() => _BGTamNongState();
}

class _BGTamNongState extends State<BGTamNong> {
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
                              'Bảng Giá Dịch Vụ Máy Tắm Nóng',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      Container(
                        width: sizeWidth*96,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Máy Tắm Nóng Trực Tiếp',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      BangGia(
                        titleCT: 'Sửa board',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '400.000đ – 500.000đ',
                      ),
                      BangGia(
                        titleCT: 'Sửa bơm trợ lực ( ko chạy, kêu to, nước yếu)	',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '	800.000đ – 1.200.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay phốt',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '400.000đ – 500.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay điện trở',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '400.000đ – 600.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay bầu + điện trở',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '600.000đ – 900.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay bộ van khoá nước	',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '300.000đ – 400.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay cảm biến',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '600.000đ',
                      ),
                      BangGia(
                        titleCT: 'Lắp máy nước nóng',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '150.000đ – 200.000đ ',
                      ),
                      Container(
                        width: 400,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Máy Tắm Nóng Gián Tiếp',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      BangGia(
                        titleCT: 'Thay phốt	',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '400.000đ – 500.000đ',
                      ),
                      BangGia(
                        titleCT: 'Sửa board	',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '400.000đ – 600.000đ',
                      ),
                      BangGia(
                        titleCT: 'Hàn bình ( Máy rỉ nước)',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '900.000đ – 1.400.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay thanh magie',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '300.000đ – 500.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay rờ le nhiệt',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '600.000đ – 800.000đ',
                      ),
                      BangGia(
                        titleCT: 'Thay điện trở	',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '600.000đ – 900.000đ',
                      ),
                      BangGia(
                        titleCT: 'Vệ sinh, bảo dưỡng bình nước nóng',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '300.000đ – 400.000đ',
                      ),
                      BangGia(
                        titleCT: 'Lắp đặt máy gián tiếp',
                        contentCT: 'Thợ báo giá trước khi làm.',
                        subtitleCT: '250.000đ – 400.000đ',
                      ),
                      ContentApp(
                        titleCTA: 'Ghi chú:',
                        textCTA:
                        '– Bảng giá sửa chữa máy tắm nóng trên là bảng giá tham khảo;' +
                            '\n– Giá có thể thay đổi theo thời giá thị trường;' +
                            '\n– Tùy vào từng hãng sẽ có mức giá khác nhau;' +
                            '\n– Bảo hành từ 1 – 6 tháng tùy theo vật tư sưa chữa;',
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
