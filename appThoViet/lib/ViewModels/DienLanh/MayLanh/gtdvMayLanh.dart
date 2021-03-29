import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../contentApp.dart';

var url = 'lib/images/thoDienLanh/';

class GTMayLanh extends StatefulWidget {
  @override
  _GTMayLanhState createState() => _GTMayLanhState();
}

class _GTMayLanhState extends State<GTMayLanh> {
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
                          child: Text('– Thợ sửa máy lạnh tại nhà – Dịch vụ sửa chữa điện lạnh giá rẻ Thợ Việt. Chuyên cung cấp các dịch vụ liên quan đến điện lạnh: vệ sinh máy lạnh, máy điều hòa, sửa máy lạnh máy điều hòa, sửa lò vi sóng, sửa máy rửa chén, máy lọc nước…\n' +
                              '– Thi công lắp đặt, vệ sinh, xử lý sự cố xảy ra trên hệ thống VRV, VRF, hệ thống HVAC, hệ thống ống gió... của tòa nhà, nhà máy...\n' +
                              '– Với đội ngũ chuyên nghiệp Thợ Việt sẽ đáp ứng mọi nhu cầu của Quý Khách.\n' +
                              'Để nhận được thông tin chi tiết về giá cũng như mọi thông tin liên quan Quý Khách vui lòng liên hệ hoặc để lại thông tin. Thợ Việt sẽ liên hệ lại sớm nhất để trao đổi với Quý Khách.'),
                        ),
                      ),
                      ActionCardButton(),
                      Image.asset(
                        'lib/images/thoSuaMayLanh/tho-sua-dien-lanh-tai-nha-quan-9.jpg',
                        fit: BoxFit.fill,
                        width: sizeWidth*95,
                        height: sizeHeight*45,
                      ),
                      ContentApp(
                        titleCTA: 'Nếu máy lạnh gặp những hư hỏng thường gặp sau:',
                        textCTA: '+ Máy nén chạy và dừng liên tục do quá tải.' +
                            '\n+ Máy chạy và ngưng liền.' +
                            '\n+ Quạt dàn nóng, lạnh không chạy.' +
                            '\n+ Máy nén không chạy hay chạy ồn.' +
                            '\n+ Máy lạnh quá lạnh hoặc Máy lạnh không lạnh.' +
                            '\n+ Ấp suất hút cao hoặc thấp.' +
                            '\n+ Máy chạy liên tục nhưng không lạnh.' +
                            '\n+ Hư block, lạnh xì gas do lắp đầu mới không đúng kỹ thuật.',
                      ),
                      ContentApp(
                        titleCTA: 'Thợ Việt với quy trình sửa máy lạnh chuyên nghiệp:',
                        textCTA: '+ Tiếp nhận thông tin khách hàng từ tổng đài\n' +
                            '+ Phân công kỹ thuật viên tới kiểm tra máy lạnh\n' +
                            '+ Chuẩn đoán nguyên nhân hư hỏng và báo giá sửa chữa\n' +
                            '+ Tiến hành khắc phục hư hỏng nếu khách hàng đồng ý\n' +
                            '+ Kiểm tra vận hành trước khi bàn giao máy lạnh cho khách hàng\n' +
                            '+ Viết phiếu thanh toán và bảo trì\n',
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
                            'lib/images/thoSuaMayLanh/tho-sua-dien-lanh-tai-nha-quan-9.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/thoSuaMayLanh/fix_thao-lap-may-lanh-tai-quan-2.jpg',
                          ),
                          HinhContent(
                            urlImage:
                            'lib/images/thoSuaMayLanh/Tho-sua-may-lanh-tai-nha.jpg',
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
