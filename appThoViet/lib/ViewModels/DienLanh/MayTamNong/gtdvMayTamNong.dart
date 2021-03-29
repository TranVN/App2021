import 'package:flutter/material.dart';

import '../../ActionCard.dart';
import '../../contentApp.dart';

var url = 'lib/images/thoDienLanh/';

class GTTamNong extends StatefulWidget {
  @override
  _GTTamNongState createState() => _GTTamNongState();
}

class _GTTamNongState extends State<GTTamNong> {
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
                              '  - Thợ sửa máy tắm nóng chuyên nghiệp, chất lượng, giá tốt Tại TP HCM. Với đội ngũ thợ điện lạnh chuyên sửa chữa lắp đặt các thiết bị điện nước, điện lạnh. Thợ của Thợ Việt sẽ nhanh chóng có mặt tại nhà Bạn. Cùng với kỹ năng, kinh nghiệm thợ sẽ xử lý triệt để lỗi ở máy nóng lạnh của bạn. Giá cả hợp lý – thay thay thế bằng linh kiên chính hãng. Bảo hành dài hạn cho mọi sửa chữa.'),
                        ),
                      ),
                      ActionCardButton(),
                      Image.asset(
                        'lib/images/thoDienLanh/images1309840_Binh_nong.jpg',
                        fit: BoxFit.fill,
                        width: sizeWidth*95,
                        height: sizeHeight*45,
                      ),
                      ContentApp(
                        titleCTA: 'Dịch vụ sửa máy tắm nóng chuyên nghiệp:',
                        textCTA: '+ Máy tắm nóng mất nguồn.' +
                            '\n+ Máy nóng không hoạt động.' +
                            '\n+ Sửa không nhận cảm biến.' +
                            '\n+ Nút điều chỉnh không nhận.' +
                            '\n+ Sửa nước cấp yếu.' +
                            '\n+ Thủng bầu đun máy gián tiếp.' +
                            '\n+ Ngoài ra còn rất nhiều nguyên nhân khác mà nếu không có kỹ thuật hoặc không đủ dụng cụ thì Bạn khó có thể sửa được.',
                      ),
                      ContentApp(
                        titleCTA: 'Dịch vụ sửa chữa – lắp đặt máy tắm nóng:',
                        textCTA: '+ Phạm vi thợ sửa máy tắm nóng phục vụ: Quân 1, Quân 2, Quận 3, Quận 4, Quận 5, Quận 6, Quận 7, Quận 8, Quận 9, Quận 10, Quận 11, Quận 12.\n' +
                            '+ Các Quận Bình Thạnh, Bình Tân, Tân Bình, Thủ Đức, Gò Vấp, huyện Bình Chánh, Huyện Nhà Bè, Huyện Củ Chi…\n' +
                            '+ Khái niệm máy tắm nóng : là máy sử dụng điện năng để đun nóng trực tiếp trong bầu đun trong quá trình sử dụng. Vì vậy khi xẩy ra lỗi, hư hỏng việc sửa máy tắm nóng trực tiếp rất khó và cần phải có kinh nghiệm. ',
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
                            urlImage: 'lib/images/thoDienLanh/maytamnongmatnguon.jpg',
                          ),
                          HinhContent(
                            urlImage: 'lib/images/thoDienLanh/maytamnongthunggian.jpg',
                          ),
                          HinhContent(
                            urlImage: 'lib/images/thoDienLanh/lap-may-nuoc-nong-8.jpg',
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
