import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../ctyThoViet.dart';

var url = 'lib/images/thoDien/';

class BGMayLanh extends StatefulWidget {
  @override
  _BGState createState() => _BGState();
}

class _BGState extends State<BGMayLanh> {
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
                              'Bảng Giá Nhân Công Sửa Máy Giặt',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      BangGia(
                        titleCT: 'Thay cánh quạt dàn nóng',
                        contentCT: 'Tùy theo hãng, model, công suất',
                        subtitleCT: '300.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay mô tơ quạt dàn nóng',
                        contentCT: 'Tùy theo hãng, model, công suất',
                        subtitleCT: '450.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Thay quạt mô tơ dàn lanh (AC)',
                        contentCT: 'Tùy theo hãng, model, công suất',
                        subtitleCT: '500.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Công tháo dỡ máy lạnh treo tường 1HP-2HP',
                        contentCT:
                        'Tùy theo tình trạng thi công giá sẽ thay đổi. Báo giá trước khi làm.',
                        subtitleCT: '150.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Tháo dỡ máy lạnh tủ đứng, âm trần, áp trần 3HP-5HP',
                        contentCT:
                        'Tùy theo tình trạng thi công giá sẽ thay đổi. Báo giá trước khi làm.',
                        subtitleCT: '350.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Châm ga R22 toàn bộ máy 1-1.5hp',
                        contentCT: 'Giá sẽ tùy theo lượng ra hao hụt',
                        subtitleCT: '350.000 đ',
                      ),
                      BangGia(
                        titleCT: 'Châm ga R22 toàn bộ máy 2-2.5hp',
                        contentCT: 'Giá sẽ tùy theo lượng ra hao hụt',
                        subtitleCT: '450.000 đ',
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
