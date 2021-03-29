import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';

var url = 'lib/images/thoDien/';

class GTTCDien extends StatefulWidget {
  @override
  _GTTCDienState createState() => _GTTCDienState();
}

class _GTTCDienState extends State<GTTCDien> {

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
                        Card(
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text(
                                'Với đội ngũ thợ điện nước chuyên nghiệp, Thợ Việt nhận thi công, lắp đặt hệ thống điện, hệ thống cấp thoát nước cho gia đình, cơ quan, công ty, xí nghiệp.'),
                          ),
                        ),

                        ActionCardButton(),

                        ContentApp(
                          titleCTA: 'Thi công điện 1 pha:',
                          textCTA: '- Đi đường điện: đường điện âm, đường điện nổi.' +
                              '\n- Thi công đường điện cho tòa nhà, nhà dân, quán cà phê.' +
                              '\n- Thi công lắp đồng hồ điện.' +
                              '\n- Thi công lắp bóng đèn điện.' +
                              '\n- Lắp đặt thiết bị điện các hãng Panasonic, Philips, LS,  Schneider,  Sino…..' +
                              '\n- Lắp đặt tranh ảnh, khoan bắt thiết bị theo yêu cầu.',
                        ),
                        ContentApp(
                          titleCTA: 'Thi công điện 3 pha:',
                          textCTA: '- Thi công lắp tủ điện 3 pha công nghiệp.' +
                              '\n- Nhận thi công lắp tủ bơm 3 pha, tủ MSB Sửa chập điện tủ điện 3 pha.' +
                              '\n- Đi đường điện cho nhà máy, xí nghiệp' +
                              '\n- Lắp đặt tủ bảo vệ cho đồ dùng, công cụ điện 3 pha, máy móc công nghiệp' +
                              '\n- Nâng cấp đường điện 3 pha.',
                        ),
                        ContentApp(
                          titleCTA: 'Ưu điểm đội thi công điện của Thợ Việt:',
                          textCTA: '- Lý lịch hồ sơ nhân viên rõ ràng, Công ty lưu trữ hồ sơ nhân viên, lịch sửa chữa, bảo trì của Khách hàng đảm bảo an toàn cho gia đình Bạn.' +
                              '\n- Đội ngũ thợ được đào tạo qua trường lớp chuyên nghiệp, lành nghề, dày dặn kinh nghiệm, máy móc chuyên dụng, nhiệt tình, chu đáo.' +
                              '\n- Sửa đúng bệnh, báo đúng giá, không vì lợi nhuận mà gian dối, bày vẽ lừa bịp khách hàng….' +
                              '\n- Nhân viên sẽ kiểm tra báo giá Khách hàng trước khi lắp đặt , sửa chữa nên Khách hàng hoàn toàn yên tâm.' +
                              '\n- Khách hàng phát hiện nhân viên làm kém chất lượng, không báo giá trước khi lắp đặt, sửa chữa, vui lòng báo về Công ty để xử lý.' +
                              '\n- Có đầy đủ (Hoá đơn VAT, Phiếu thu, Chứng từ cần thiết..) để khách hàng tiện thanh toán.' +
                              '\n- Tiện lợi thanh toán: chuyển khoản.' +
                              '\n- Tuân thủ quy định an toàn lao động khi sửa chữa điện nước.' +
                              '\n- Tư vấn Khách hàng phương án tiết kiệm – Giá thành hợp lý – Bảo hành dài hạn – Phục vụ Khách hàng tất cả các ngày trong tuần.',
                        ),
                        GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(5),
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          shrinkWrap: true,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(url + 'fix_14.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              // padding: const EdgeInsets.all(8),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(url + 'fix_11.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              // padding: const EdgeInsets.all(8),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(url + 'fix_15.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              // padding: const EdgeInsets.all(8),
                            ),
                          ],
                        ),
                        ContentApp(
                          titleCTA:
                          'Bên cạnh các dịch vụ về điện, Thợ Việt còn cung cấp các dịch vụ khác như :',
                          textCTA: '- Dịch vụ sửa chữa vệ sinh lắp đặt máy lạnh.\n' +
                              '- Sửa chữa lắp đặt thi công ống nước.\n' +
                              '- Vệ sinh bể nước bồn nước, bể chứa nước sinh hoạt  mọi dung tích.',
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
