import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../contentApp.dart';

var url = 'lib/images/thoDienLanh/';

class GTMayGiat extends StatefulWidget {
  @override
  _GTMayGiatState createState() => _GTMayGiatState();
}

class _GTMayGiatState extends State<GTMayGiat> {
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
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Text(
                              '   - Hiện nay máy giặt là một vật dụng không thể thiếu với những hộ gia đình. Nó được sử dụng thường xuyên hằng ngày. Tuy nhiên, máy giặt ngày càng được trang bị nhiều tính năng, các board điện tử được thiết kế phức tạp hơn. Vì vậy việc sửa chữa máy giặt là điều không thể đối với những với bình thường khi gặp sự cố. Lúc này bạn nên liên hệ đến chuyên gia của Thợ Việt để xử lý. Đây chắc chắn là nơi hết sức hợp lý để bạn giao máy giặt để sửa chữa.' +
                                  '\n   - Thợ điện lạnh Thợ Việt có kinh nghiệm và tay nghề cao, nhận sửa được tất cả các hãng máy giặt từ lồng đứng, lồng ngang đến máy giặt nội địa. Luôn đặt hiệu quả lên hàng đầu và sẳn sàng phục vụ dù bạn ở nơi đâu trên địa bàn TPHCM.'),
                        ),
                      ),
                      ActionCardButton(),
                      Image.asset(
                        'lib/images/thoDienLanh/fix_tho-sua-may-giat-tai-nha-tphcm.jpg',
                        fit: BoxFit.fill,
                        width: sizeWidth*95,
                        height: sizeHeight*45,
                      ),
                      ContentApp(
                        titleCTA:
                        'Sửa máy giặt tại nhà với đội ngũ nhân viên chuyên nghiệp:',
                        textCTA: '+ Để thuận tiện cho việc sửa máy giặt và tiết kiệm thời gian đi lại của khách hàng. Công ty TNHH dịch vụ kỹ thuật Thợ Việt mở ra dịch vụ sửa máy giặt tại nhà.' +
                            '\n+ Bất kì trường hợp nào liên quan tới máy giặt dù là lớn nhỏ đều được chúng tôi khắc phục một cách nhanh chóng nhất.' +
                            '\n+ Trong quá trình phục vụ nếu Quý khách không hài lòng về “Báo giá” hoặc “Cách phục vụ chưa tốt” của Dịch vụ của Thợ Việt. Chúng tôi sẽ đổi thợ khác để đến kiểm tra báo giá lại cho Khách hàng.' +
                            '\n+ Thợ Việt luôn mong muốn mang tới dịch vụ tốt nhất cho Quý Khách Hàng.' +
                            '\n+ Công Ty Thợ Việt kính mong quý khách Góp ý để  công ty phát triển.',
                      ),
                      ContentApp(
                        titleCTA: 'Nhận sửa mọi hư hỏng về máy giặt:',
                        textCTA: '+ Sửa board máy giặt.\n' +
                            '+ Máy giặt không vắt, không xả, không cấp nước vào.\n' +
                            '+ Máy giặt bị chạm điện, chảy nước hoặc máy giặt không vào nước.\n' +
                            '+ Thay thế linh kiện máy giặt.\n' +
                            '+ Máy giặt xả nước, chớp đèn liên tục.\n' +
                            '+ Bảng điều khiền không bấm được.\n' +
                            '+ Máy giặt không vô nguồn, không giặt.\n' +
                            '+ Thay khóa cửa máy giặt.\n' +
                            '+ Máy giặt kêu to hoặc máy giặt kêu tít tít liên tục.\n',
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
                            urlImage:
                            'lib/images/thoDienLanh/fix_tho-sua-may-giat-tai-nha-tphcm.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/thoDienLanh/ve-sinh-may-giat-tai-tphcm-quan-4-720x338.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/thoDienLanh/sua-may-giat-khong-vao-dien.jpg',
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
