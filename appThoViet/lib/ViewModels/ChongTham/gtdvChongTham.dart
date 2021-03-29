import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../KDDV.dart';
import '../contentApp.dart';

var urlKDDV = 'lib/images/kddv/';
var url = 'lib/images/chongTham/';

class GTChongTham extends StatefulWidget {
  @override
  _GTChongThamState createState() => _GTChongThamState();
}

class _GTChongThamState extends State<GTChongTham> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: ListView(
        children: <Widget>[SizedBox(height: 10), Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Card(
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                            "Với cái tâm làm nghề Thợ Việt Luôn hướng tới dịch vụ tuyệt vời nhất cho mọi khách hàng. Thợ Việt luôn khẳng định dịch vụ với 3 yếu tố sau:",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(5),
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        shrinkWrap: true,
                        children: <Widget>[
                          KDDV(
                            urlImg: urlKDDV + 'efficiency.png',
                            titleKDDV: 'CHẤT LƯỢNG',
                          ),
                          KDDV(
                            urlImg: urlKDDV + 'premium-quality.png',
                            titleKDDV: 'UY TÍN',
                          ),
                          KDDV(
                            urlImg: urlKDDV + 'reputation.png',
                            titleKDDV: 'HIỆU QUẢ',
                          ),
                        ],
                      ),
                      ActionCardButton(),
                      DVChongTham(
                        urlDVCT: url + '2407-20-Chong-tham-san-thuong-2.jpg',
                        titleDVCT: 'CHỐNG THẤM SÂN THƯỢNG',
                        contentDVCT:
                        '+ Nhận thi công chống thấm sân thượng đã lót gạch.\n' +
                            '+ Chống thấm sân thượng chưa hoàn thiện.\n' +
                            '+ Chống thấm sân thượng bằng sơn chống thấm.',
                      ),
                      DVChongTham(
                        urlDVCT: url + '2407-20-sua-chua-tham-tuong-nha-A-Linh-8.jpg',
                        titleDVCT: 'XỬ LÝ CHỐNG THẤM TRONG NHÀ TẮM',
                        contentDVCT: '+ Xử lý thấm nước do hộp gen.\n' +
                            '+ Xử lý thấm lỗ thoát sàn nhà tắm.\n' +
                            '+ Làm lại gạch nền xử lý thấm.',
                      ),
                      DVChongTham(
                        urlDVCT: url + 'chongthamtuongnha.jpg',
                        titleDVCT: 'CHỐNG THẤM TƯỜNG NHÀ',
                        contentDVCT:
                        '+ Thi công sơn chống thấm. Xử lý nứt chân chim tường nhà.\n' +
                            '+ Và các tình trạng thấm khác.',
                      ),
                      ContentApp(
                        titleCTA: 'Một số nguyên nhân khiến tường nhà bạn bị thấm:',
                        textCTA: '– Tường nhà bị thấm do trời mưa nhiều, lượng nước ngấm vào tường lớn. Bản chất của xi măng hút nước mạnh và có những mao quản (khoảng cách giữa các hạt) có đường kính khoảng từ 20 – 40 micromet. Do đó, khi bề mặt tường tiếp xúc với nước, những khe hở mao quản sẽ bị nước xâm nhập vào bên trong gây ra hiện tượng thấm.\n' +
                            '– Do vị trí các ống thoát nước sàn giáp lai tường nhà, rãnh nước trên sàn mái… Nước và hơi ẩm từ những nơi này có thể theo các vết nứt, mao mạch rỗng của tường thấm sâu vào bên trong. Theo thời gian, tường nhà bị nước thấm vào tạo nên từng mảng loang lổ với lớp sơn xuống cấp.\n' +
                            '– Tường nhà xuống cấp do thời gian dài sử dụng, những vết nứt, bong tróc xuất hiện làm cho nước và hơi ẩm thấm sâu vào bên trong tường, đặc biệt khi vào mùa mưa tình trạng này lại diễn ra trầm trọng hơn.\n' +
                            '– Trong quá trình xây dựng, người thợ sử dụng cốt liệu bê tông không đúng quy chuẩn, hoặc không đủ vữa xi măng.\n' +
                            '– Nguyên nhân trực tiếp nhất vẫn là công trình không chủ động sử dụng những phương pháp ngăn thấm dột ngay từ những ngày đầu xây dựng.\n' +
                            'Ngoài ra còn có nhiều nguyên nhân khách quan khác có thể dẫn đến việc tường nhà bạn bị thấm. Việc cần thiết là xử lý triệt để căn nguyên của việc bị thấm.',
                      ),
                      ContentApp(
                        titleCTA: 'Công ty TNHH Dịch Vụ Kỹ Thuật Thợ Việt',
                        textCTA:
                        '– Với đội ngũ kỹ thuật viên có trình độ, tận tình, trang bị đầy đủ công cụ hiện đại đảm bảo cho quý khách hàng được phục vụ nhanh chóng, chất lượng…\n' +
                            '– Tất cả các thiết bị lắp đặt, sửa chữa sẽ được bảo hành dài hạn\n' +
                            '– Mạng lưới phục vụ rộng khắp thành phố Hồ Chí Minh.',
                      ),
                      new Text(
                        'Thợ Việt với đội ngũ thợ chống thấm, điện lạnh, điện nước, vệ sinh,... lành nghề, uy tín, chất lượng, phục vụ nhiệt tình chu đáo, giá cả phải chăng.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: sizeHeight*2 ,
                      )
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

class DVChongTham extends StatelessWidget {
  DVChongTham({this.urlDVCT, this.titleDVCT, this.contentDVCT});
  final String urlDVCT;
  final String titleDVCT;
  final String contentDVCT;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              titleDVCT,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Image.asset(
            urlDVCT,
            fit: BoxFit.cover,
            width: 400,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
            child: Text(
              contentDVCT,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
