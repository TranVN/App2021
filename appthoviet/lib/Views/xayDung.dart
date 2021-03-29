import '../ViewModels/ActionCard.dart';
import '../ViewModels/KDDV.dart';
import '../ViewModels/contentApp.dart';
import 'package:flutter/material.dart';

var urlKDDV = 'lib/images/kddv/';
var url = 'lib/images/xaydung/';

class XayDung extends StatefulWidget {
  @override
  _XayDungState createState() => _XayDungState();
}

class _XayDungState extends State<XayDung> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      appBar: AppBar(

        title: Text('Xây Dựng'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Container(
            padding:  EdgeInsets.only(left: sizeWidth*2, right: sizeWidth*2, top: sizeHeight*1),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 5.0,
                          shadowColor: Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text(
                                '- Dịch vụ xây dựng của Thợ Việt cam kết sẽ đem lại cho bạn dịch vụ tốt nhất! \n - Bạn sẽ là người đặt niềm tin đúng chỗ khi lựa chọn dịch vụ của Thợ Việt.'),
                          ),
                        ),
                        new GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(5),
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          shrinkWrap: true,
                          children: <Widget>[
                            KDDV(
                              urlImg: urlKDDV + 'premium-quality.png',
                              titleKDDV: 'CHẤT LƯỢNG',
                            ),
                            KDDV(
                              urlImg: urlKDDV + 'reputation.png',
                              titleKDDV: 'UY TÍN',
                            ),
                            KDDV(
                              urlImg: urlKDDV + 'efficiency.png',
                              titleKDDV: 'HIỆU QUẢ',
                            ),
                          ],
                        ),
                        ContentApp(
                          titleCTA: 'Dịch vụ xây dựng chuyên nhận:',
                          textCTA: '   – Thi công xây dựng nhà mới.' +
                              '\n   – Xây tô ốp lát nhà mới, cũ.' +
                              '\n   – Thiết kế - xây dựng tiểu cảnh sân vườn, giả gỗ, hòn non bộ.',
                        ),
                        new Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'xay-dung-nha-pho.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        ActionCardButton(),
                        ContentApp(
                          titleCTA: 'Quy trình làm việc',
                          textCTA: 'Tiếp nhận thông tin khách hàng:' +
                              '\n   + Liên hệ trực tiếp với Dịch vụ sửa nhà trọn gói Thợ Việt qua Hotline : 0903.532.938.' +
                              '\n   + Liên hệ qua Fanpage : Công Ty Thợ Việt.' +
                              '\n   + Hoặc zalo 0903.532.935 - 0914.439.118. Để được báo giá miễn phí',
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'CSKH.png',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        ContentApp(
                          titleCTA: 'Tiến hành khảo sát xác nhận yêu cầu của khách hàng',
                          textCTA:
                          '– Sau khi khách hàng để lại thông tin thông qua ứng dụng hoặc các thông tin liên lạc của Thợ Việt thì chúng tôi sẽ cử nhân viên chất lượng đến để:\n' +
                              '+ Trao đổi kỹ với khách hàng từng vị trí cụ thể.\n' +
                              '+ Đưa ra nhiều phương án cho khách hàng lựa chọn.\n' +
                              '+ Tư vấn - thiết kế cho quý khách han hàng.\n',
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'trang-tri-tieu-canh-san-vuon.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        ContentApp(
                          titleCTA: 'Kí kết hợp đồng lên kế hoạch và tiến hành thi công',
                          textCTA: ' – Trao đổi mọi nội dung với khách hàng và tiến hành báo giá.\n' +
                              '+ Khách Hàng đồng ý giá.\n' +
                              '+ Thợ Việt lên Hợp Đồng.\n' +
                              '+ Khách Hàng đồng ý báo giá cũng như Hợp Đồng.\n' +
                              '+ Đội sửa nhà trọn gói Thợ Việt tiến hành thi công theo phương án đã tiến hành.\n' +
                              '+ Dọn dẹp sạch sẽ hoàn thiện công trình trước khi bàn giao.\n' +
                              '+ Bàn giao công trình đúng thời gian.\n',
                        ),
                        new Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Image.asset(
                                url + 'son-gia-da-cam-thach-sang-trong.jpg',
                                width: 400,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(5),
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          shrinkWrap: true,
                          children: [
                            Image.asset(
                              url + 'son-gia-da.jpg',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              url + 'tieu-canh.jpg',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Card(
                          child: Text(
                            'QUÝ KHÁCH VUI LÒNG LIÊN HỆ TRỰC TIẾP VĂN PHÒNG CÔNG TY QUA HOTLINE : 0903.532.938',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )],
        ),
      ),
    );
  }
}
