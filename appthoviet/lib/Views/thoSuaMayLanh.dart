import 'package:flutter/cupertino.dart';

import '../ViewModels/contentApp.dart';
import 'package:flutter/material.dart';
import '../ViewModels/BangGiaCoHinh.dart';
import '../ViewModels/ActionCard.dart';

var url = 'lib/images/thoSuaMayLanh/';

class ThoSuaMayLanh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Sửa Máy Lạnh'),
        centerTitle: true,
      ),
      body: ThoSuaMayLanhWiget(),
    );
  }
}

class ThoSuaMayLanhWiget extends StatefulWidget {
  static String routeName = 'views/ThoSuaMayLanh';
  @override
  _ThoSuaMayLanhWigetState createState() => _ThoSuaMayLanhWigetState();
}

class _ThoSuaMayLanhWigetState extends State<ThoSuaMayLanhWiget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
        body: new ListView(
      children: <Widget>[Container(
        padding:  EdgeInsets.only(left: sizeWidth*2, right: sizeWidth*2, top: sizeHeight*1),
        child: new Row(
          children: <Widget>[
            new Expanded(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shadowColor: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text('– Thợ sửa máy lạnh tại nhà – Dịch vụ sửa chữa điện lạnh giá rẻ Thợ Việt. Chuyên cung cấp các dịch vụ liên quan đến điện lạnh: vệ sinh máy lạnh, máy điều hòa, sửa máy lạnh máy điều hòa, sửa lò vi sóng, sửa máy rửa chén, máy lọc nước…\n' +
                            '– Thi công lắp đặt, vệ sinh, xử lý sự cố xảy ra trên hệ thống VRV, VRF, hệ thống HVAC, hệ thống ống gió... của tòa nhà, nhà máy...\n' +
                            '– Với đội ngũ chuyên nghiệp Thợ Việt sẽ đáp ứng mọi nhu cầu của Quý Khách.\n' +
                            'Để nhận được thông tin chi tiết về giá cũng như mọi thông tin liên quan Quý Khách vui lòng liên hệ hoặc để lại thông tin. Thợ Việt sẽ liên hệ lại sớm nhất để trao đổi với Quý Khách.'),
                      ),
                    ),
                    ActionCardButton(),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Tham Khảo Bảng giá nhân công – vật tư điện lạnh(Giá tham khảo)",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    BangGiaCoHinh(
                      urlimg: url + 'suamaylanh.png',
                      titleBG: 'Thay tụ chạy block máy nén máy 1-1,5hp',
                      gia: 'Giá từ: 350.000đ',
                    ),
                    BangGiaCoHinh(
                      urlimg: url + 'Tho-sua-may-lanh.jpg',
                      titleBG: 'Thay tụ chạy block máy nén máy 2-2,5hp',
                      gia: 'Giá từ: 450.000đ - 550.000đ',
                    ),
                    BangGiaCoHinh(
                      urlimg: url +
                          'Tho-dien-lanh-sua-may-lanh_tho-viet-2-e1541128658283.jpg',
                      titleBG: 'Thay cánh quạt dàn nóng',
                      gia: 'Giá từ: 300.000đ',
                    ),
                    //  chu doi
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/mo-to-dan-lanh.jpg',
                            width: 400,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: const Text('Thay quạt mô tơ dàn lạnh (AC)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              'Giá từ: 500.000đ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.black87, fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/Block-may-lanh.jpg',
                            width: 400,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: const Text(
                                'Thay block máy lạnh cũ 1.0 hp - BH 06 tháng',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              'Giá từ: 1,8 triệu - 2,2 triệu (Tùy theo hãng)',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.black87, fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ActionCardButton(),
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

                    Text(
                      'Hãy liên hệ ngay dịch vụ sửa điện lạnh tại nhà của Thợ Việt!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
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
                          urlImage: url + 'tho-sua-dien-lanh-tai-nha-quan-9.jpg',
                        ),
                        HinhContent(
                          urlImage: url + 'fix_thao-lap-may-lanh-tai-quan-2.jpg',
                        ),
                        HinhContent(
                          urlImage: url + 'Tho-sua-may-lanh-tai-nha.jpg',
                        ),
                      ],
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
    ));
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
    );
  }
}
