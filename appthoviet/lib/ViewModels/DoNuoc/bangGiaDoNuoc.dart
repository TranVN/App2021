import 'package:flutter/material.dart';

import '../BangGia.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/doNuocRoRi/';

class BGDoNuoc extends StatefulWidget {
  @override
  _BGDoNuocState createState() => _BGDoNuocState();
}

class _BGDoNuocState extends State<BGDoNuoc> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: ListView(
        children: <Widget>[Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Bảng Giá Dò Nước Rò Rỉ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      BangGia(
                        titleCT: 'Dò nước dò rỉ 1',
                        contentCT: 'Sửa ống nước nổi rò rỉ\n' +
                            'Bồn cầu rò rỉ nước\n' +
                            'Vòi nước bị rò rỉ\n' +
                            'Ống nước bể thấy chỗ\n' +
                            'Ghi chú: Không cần sử dụng máy dò tìm chuyên dụng',
                        subtitleCT: 'Giá từ: 150,000 đ - 350,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Dò nước dò rỉ 2',
                        contentCT:
                        'Dò tìm đường ống nước trong gia đình bị bể ngầm không thấy vị trí bể, sử dụng máy dò chuyên dụng có thể dò được ống nước sâu hơn 2 mét. Dưới các lớp bê tông, đường nhựa, đất sét....',
                        subtitleCT: 'Giá từ: 800,000 đ - 1,200,000 đ',
                      ),
                      BangGia(
                        titleCT: 'Dò nước dò rỉ 3',
                        contentCT:
                        'Đối với công ty, nhà máy, khu dân cư, tòa nhà, khu công nghiệp... Thợ sẽ liên hệ, tiến hành khảo sát báo giá miễn phí! Lên kế hoạch, nhanh chóng thực hiện theo đúng kế hoạch đã thống nhất giữa 2 bên.',
                        subtitleCT: 'Giá từ: Khảo sát báo giá',
                      ),
                      CTYThoViet(),
                    ],
                  ))
            ],
          ),
        )],
      ),
    );
  }
}
