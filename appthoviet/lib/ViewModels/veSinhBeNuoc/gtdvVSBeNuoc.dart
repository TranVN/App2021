import 'package:appthoviet/ViewModels/ChongTham/gtdvChongTham.dart';
import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';
import '../ctyThoViet.dart';

// khai bao bien
var url = 'lib/images/VSBN/';

class GioiThieuVSBeNuoc extends StatefulWidget {
  @override
  _GioiThieuVSBeNuocState createState() => _GioiThieuVSBeNuocState();
}

class _GioiThieuVSBeNuocState extends State<GioiThieuVSBeNuoc> {
  Widget titleSection = Container(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(" Vệ sinh bể nước ngầm, xúc rửa, phun xịt khử trùng bể nước ngầm bằng Clorin định kỳ 6 tháng/lần đảm bảo nguồn nước sạch trong sinh hoạt và sử dụng, giúp bảo vệ sức khoẻ gia đình Bạn!\n" +
                    '   Dịch vụ vệ sinh bể nước được công ty đưa vào thực hiện từ tháng 06 năm 2012. Thợ Việt nhanh chóng đáp ứng nhu cầu vệ sinh bồn nước, bể nước sinh hoạt cho các hộ gia đình, chung cư, tòa nhà, xí nghiệp, trường học… Gúp đảm bảo nguồn nước sạch trong sinh hoạt và sử dụng, giúp bảo vệ sức khỏe người sử dụng.\n' +
                    '   – Vệ sinh bể nước ngầm gia đình, cơ quan, công ty, tòa nhà, xí nghiệp, chung cư….\n' +
                    '   – Thau rửa bể  nước các Quận TP.HCM, Long An, Bình Dương, Đồng Nai, Tây Ninh, Vũng Tàu….\n' +
                    '   – Vệ sinh bể nước ngầm lớn nhỏ từ 0.5m3 – 2.000m3.\n'),
              ),
            ),
            ActionCardButton(),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                HinhContent(
                  urlImage: url + 'Ve-sinh-be-chua-nuoc-8.jpg',
                ),
                HinhContent(
                  urlImage: url + 've-sinh-ho-nuoc-3.jpg',
                ),
                HinhContent(
                  urlImage: url + 've-sinh-ho-nuoc-4.jpg',
                ),
              ],
            ),
            ContentApp(
              titleCTA: ' Khi nào cần vệ sinh bể nước ngầm:',
              textCTA: '+ Phát hiện màu nước bị tối màu, nước chuyển sang màu nâu hoặc đen.\n' +
                  '+ Khi sử dụng nước có mùi bất thường.\n' +
                  '+ Nước sử dụng xuất hiện lăng quăng, bọ gây, những sinh vật lạ mà mắt thường cũng có thể nhìn thấy.\n' +
                  '+ Khi sử dụng xong cảm thấy ngứa ngáy, da mặt, chân tay nổi mụn đỏ. Tình trạng xảy ra với nhiều thành viên.\n' +
                  '+ Khi nấu thức ăn từ bể nước cảm thấy có mùi tanh, vị lạ, thậm chí có dấu hiệu ngộ độc.\n',
            ),
            ContentApp(
              titleCTA: ' Chọn dịch vụ vệ sinh bể nước của Thợ Việt vì',
              textCTA: '+ Thợ Việt cam kết không sử dụng chất tẩy rửa gây hại cho sức khỏe người dùng. Tất cả các hóa chất chúng tôi sử dụng đều được bộ Y Tế kiểm định qua.\n' +
                  '+ Với tiêu chí “cần là có, gọi là tới”, với đội ngũ đông đảo trên TPHCM cùng các tỉnh lân cận. Khách hàng gọi tới Thợ Việt, sau 30 phút là có nhân viên tới trực tiếp tại gia đình để tiến hành kiểm tra khảo sát báo giá.\n' +
                  '+ Khảo sát miễn phí, báo giá công khai, khuyến mãi 10% cho nhân công dịch vụ sửa chữa điện nước lần sau. Đảo bảo khách hàng không thất vọng khi sử dụng dịch vụ của chúng tôi.\n',
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: <Widget>[
                HinhContent(
                  urlImage: url + 'Ve-sinh-ho-nuoc-sinh-hoat-2.jpg',
                ),
                HinhContent(
                  urlImage: url + 'Ve-sinh-ho-nuoc-sinh-hoat-4.jpg',
                ),
                HinhContent(
                  urlImage: url + '2011-16-Nhac-35.jpg',
                ),
                HinhContent(
                  urlImage: url + '2011-16-Nhac-33.jpg',
                ),
              ],
            ),
            CTYThoViet(),
          ],
        ))
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[SizedBox(height: 10), titleSection],
      ),
    );
  }
}

class GioiThieuMayDo extends StatelessWidget {
  GioiThieuMayDo({this.urlDVCT, this.titleDVCT, this.contentDVCT});
  final String urlDVCT;
  final String titleDVCT;
  final String contentDVCT;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset(
            urlDVCT,
            fit: BoxFit.cover,
            width: 400,
            height: 200,
          ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 5.0),
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
