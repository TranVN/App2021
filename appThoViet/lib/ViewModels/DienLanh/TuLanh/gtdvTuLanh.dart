import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../contentApp.dart';

class GTTuLanh extends StatefulWidget {
  @override
  _GTTuLanhState createState() => _GTTuLanhState();
}

class _GTTuLanhState extends State<GTTuLanh> {
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
                      Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text('- Với nền kinh tế phát triển như hiện nay, thì việc mỗi gia đình đều sử dụng tủ lạnh là điều không thể thiếu trong nhà bếp chúng ta.' +
                              '\n- Tủ lạnh giúp bạn bảo quản thực phẩm được lâu hơn. Chính vì sự quan trọng nên khi tủ lạnh bị hỏng. Bạn cần phải tìm phương pháp khắc phục. Phương pháp nhanh nhất đó là gọi ngay cho dịch vụ sửa tủ lạnh tại nhà.' +
                              '\n - Công ty TNHH dịch vụ kỹ thuật Thợ Việt chuyên sửa chữa tủ lạnh với các lỗi hư hỏng dù là nhỏ nhất.'),
                        ),
                      ),
                      ActionCardButton(),
                      Image.asset(
                        'lib/images/tuLanh/tho-sua-tu-lanh-tu-mat-13.jpg',
                        fit: BoxFit.fill,
                        width: sizeWidth*95,
                        height: sizeHeight*45,
                      ),
                      ContentApp(
                        titleCTA: 'Những lỗi hư hỏng của tủ lạnh:',
                        textCTA:
                        '+ Để thuận tiện cho việc sửa máy giặt và tiết kiệm thời gian đi lại của khách hàng. Công ty TNHH dịch vụ kỹ thuật Thợ Việt mở ra dịch vụ sửa máy giặt tại nhà.' +
                            '\n+ Thời gian làm lạnh kéo dài.' +
                            '\n+ Đèn sáng nhưng tủ lạnh không chạy.' +
                            '\n+ Tủ lạnh phát ra tiếng ồn lớn.' +
                            '\n+ Có tiếng gõ nhẹ bên trong block.' +
                            '\n+ Cửa tủ lạnh bị chênh hay vỏ tủ không kín.' +
                            '\n+ Tủ lạnh yếu lạnh.' +
                            '\n+ Hệ thống lạnh không đúng.' +
                            '\n+ Sê vỏ tủ lạnh, trên vỏ tủ có hiện tượng đọng sương.',
                      ),
                      ContentApp(
                        titleCTA: 'Một số nguyên nhân tủ lạnh bị hư hỏng:',
                        textCTA: '+ Tủ lạnh không lạnh : Có thể bạn không tin nhưng đa phần do bạn bỏ quá nhiều đồ vào tủ lạnh hoặc do thường xuyên mở tủ lạnh dẫn tới việc tủ lạnh không đủ nhiệt độ để làm lạnh. Ngoài ra còn một số nguyên nhân như xò lạnh bị hư, cảm biến hư …. Với những nguyên nhân trên Bạn hãy gọi cho Thợ để khắc phục được một cách nhanh chóng.\n' +
                            '+ Trên vỏ tủ có hiện tượng động sương: Nguyên nhân chính có thể là do roong cao su bị hở.\n' +
                            '+ Quạt không chạy : Nguyên nhân do hoạt động quá công xuất, lâu ngày không được vệ sinh … cũng có thể do quạt bị cháy.\n',
                      ),
                      GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(5),
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        shrinkWrap: true,
                        children: <Widget>[
                          HinhContent(
                            urlImage: 'lib/images/tuLanh/2-1-1.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/tuLanh/fix_tho-sua-tu-lanh-tu-dong-tai-nha-3.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/tuLanh/tho-sua-tu-lanh-tu-dong-tai-nha-8.jpg',
                          ),
                        ],
                      ),
                      Card(
                        child: Text(
                          'QUÝ KHÁCH VUI LÒNG LIÊN HỆ TRỰC TIẾP VĂN PHÒNG CÔNG TY QUA HOTLINE : 0903.532.938',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        )],
      ),
    );
  }
}

class HinhContent extends StatelessWidget {
  HinhContent({this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      // padding: const EdgeInsets.all(8),
    );
  }
}
