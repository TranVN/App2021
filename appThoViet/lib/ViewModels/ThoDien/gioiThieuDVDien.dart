import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';

var url = 'lib/images/thoDien/';

class GioiThieuDVDien extends StatefulWidget {
  @override
  _GioiThieuDVDienState createState() => _GioiThieuDVDienState();
}

class _GioiThieuDVDienState extends State<GioiThieuDVDien> {

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
                        Image.asset(
                          url + 'tho-dien-nuoc-tphcm-quan-4.jpg',
                          fit: BoxFit.cover,
                          width: sizeWidth*100,
                          height: sizeHeight*20,
                        ),
                        Card(
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text('- Thợ sửa điện nhà tại TP Hồ Chí Minh, dịch vụ nhanh chóng chất lượng, uy tín, bảo hành dài lâu.\n' +
                                '- Dịch vụ sửa điện tại nhà, công ty, cơ quan, văn phòng tại Tp Hồ Chí Minh.\n' +
                                '- Dịch vụ sửa chữa điện với đội ngũ nhân viên kỹ thuật điện chuyên nghiệp, tận tâm, nhiệt tình, vui vẻ.\n' +
                                '- Có hoá đơn VAT, phiếu thu, giấy biên nhận giao hàng, chứng từ đầy đủ để khách hàng tiện thanh toán.'),
                          ),
                        ),
                        ActionCardButton(),
                        ContentApp(
                          titleCTA: 'Sửa chữa điện 1 pha:',
                          textCTA:
                          '- Khắc phục nhanh, xử lý mọi sự cố về điện: Sửa chập điện, sửa mất điện.' +
                              '\n- Xử lý nhanh sự cố chập điện trong tường.' +
                              '\n- Sửa chữa sự cố mất điện sập Áptomat.' +
                              '\n- Xử lý sự cố rò rỉ điện, làm điện không đủ sáng.' +
                              '\n- Kiểm tra đồng hồ điện chạy sai chỉ số. Lắp đồng hồ điện tính tiền điện riêng cho phòng trọ, phòng cho thuê.',
                        ),
                        ContentApp(
                          titleCTA: 'Sửa chữa điện 3 pha:',
                          textCTA: '- Thay thế sửa chữa tủ điện 3 pha công nghiệp.' +
                              '\n- Lắp tủ bơm 3 pha, tủ MSB Sửa chập điện tủ điện 3 pha.' +
                              '\n- Cân, tách nguồn điện 3 pha' +
                              '\n- Xử lý tình trạng lệch pha, pha để điện áp ổn định (nguyên nhân có thể  là do đứt dây hoặc quá tải điện một pha nào đó…)' +
                              '\n- Cấp nguồn 3 pha chia pha cho từng tâng' +
                              '\n- Đấu, cấp nguồn 3 pha TI.' +
                              '\n- Lắp đặt tủ bảo vệ cho đồ dùng, công cụ điện 3 pha, máy móc công nghiệp',
                        ),
                        ContentApp(
                          titleCTA: 'Mạng lưới phục vụ rộng khắp TP.HCM:',
                          textCTA: '- Thợ Việt với đội ngũ thợ chuyên sửa chữa điện nước, có nhiều năm kinh nghiệm trong nghề. Nhiều thợ có tay nghề cao, giỏi có thể sửa chữa được những ca khó.' +
                              '\n- Đội ngũ thợ phủ khắp các quận huyện tại TP Hồ Chí Minh. Sẽ nhanh có mặt để giải quyết vấn đề bạn gặp phải.' +
                              '\n- Đội ngũ thợ phủ khắp các quận huyện tại TP Hồ Chí Minh. Sẽ nhanh có mặt để giải quyết vấn đề bạn gặp phải.' +
                              '\n- Dịch vụ sửa điện tại nhà quận 1, quận 2, quận 3, quận 4, quận 5, quận 7, quận 8, quận 9, quận 10, quận 11, quận 12.' +
                              '\n- Dịch vụ sửađiện tại nhà các quận Phú Nhuận, quận Bình Thạnh, quận Gò Vấp, quận Tân Bình, quận Tân Phú, quận Thủ Đức, quận Bình Tân, H Bình Chánh.' +
                              '\n- Thợ Việt luôn lấy tinh thần trách nghiệm để đảm bảo chất lượng công trình. Bảo hành nhanh chóng.',
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
                          'Bên cạnh các dịch vụ về điện, Thợ Việt còn cung cấp các dịch vụ khác như:',
                          textCTA: '_ Dịch vụ sửa chữa vệ sinh lắp đặt máy lạnh.\n' +
                              '_ Sửa chữa lắp đặt thi công ống nước.\n' +
                              '_ vệ sinh bể nước bồn nước, bể chứa nước sinh hoạt  mọi dung tích.',
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
