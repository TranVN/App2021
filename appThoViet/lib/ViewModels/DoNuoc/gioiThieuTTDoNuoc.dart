import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/doNuocRoRi/';

class GioiThieuTTDoNuoc extends StatefulWidget {
  @override
  _GioiThieuTTDoNuocState createState() => _GioiThieuTTDoNuocState();
}

class _GioiThieuTTDoNuocState extends State<GioiThieuTTDoNuoc> {
  @override
  Widget build(BuildContext context) {
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
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                              "   Thợ Việt chuyên nhận dò tìm rò rỉ nước âm, kiểm tra đường ống nước bị bể ngầm và sửa chữa đường ống nước bể(vỡ) ngầm gây thất thoát nước cho hộ gia đình Tại Tp Hồ Chí Minh, Bình Dương, Đồng Nai.\n" +
                                  '   Dò tìm rò rỉ nước cho tòa nhà khu công nghiệp tại các tỉnh Tiền Giang, Bến Tre, Vũng Tàu, Long An, Tây Ninh, Lâm Đồng, Bình Dương, Đồng Nai, ...'),
                        ),
                      ),
                      ActionCardButton(),
                      GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(5),
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(url + 'do-tim-ro-ri-nuoc.jpg'),
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
                                image: AssetImage(
                                    url + 'fix_Do-tim-ro-ri-that-thoat-nuoc-4.jpg'),
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
                        'Với trang bị máy móc hiện đại. Thợ dò tìm nước rò rỉ của Thợ Việt nhận dò tìm nước thất thoát ở những vị trí khó nhất. Mà các đơn vị khác có thể không làm được:',
                        textCTA:
                        '   + Nhận dò tìm cho các tòa nhà, trường học, nhà máy, khu công nghiệp nội và ngoại thành TP Hồ Chí Minh.\n' +
                            '   + Xử lý các đường ống nước lớn bị rò rỉ nhanh chóng. Tiết kiệm thời gian và tiền bạc cho Khách Hàng.\n',
                      ),
                      ContentApp(
                        titleCTA: 'Nguyên nhân dẫn tới rò rỉ nước',
                        textCTA: '+ Khi mua nhà xây trọn gói thì đa số chủ đầu tư sẽ chọn những thiết bị kém chất lượng. Để tiết kiệm chi phí dẫn tới sử dụng được thời gian thì bị vỡ, bục.\n' +
                            '+ Với đường ống nước đi âm nền thì việc nền nhà bị sụt lún cũng sẽ làm cho ống nước bị nứt, gãy.\n' +
                            '+ Không có kế hoạch bảo dưỡng hoặc nâng cấp đúng thời gian. Cái gì cũng có tuổi thọ nhất định, ống nước cũng vậy. Sẽ bị bào mòn theo thời gian cộng với áp lực nước rất mạnh rất dễ dẫn đến bục gãy.\n',
                      ),
                      ContentApp(
                        titleCTA: 'Dấu hiệu cho thấy hiện tượng rò rỉ nước',
                        textCTA: '+ Hóa đơn tiền điện nước tăng đột ngột, mặc dù nhu cầu sử dụng không nhiều.\n' +
                            '+ Đồng hồ nước vẫn quay khi tất cả thiết bị xã nước đều bị khóa.\n' +
                            '+ Máy bơm hoạt động liên tục.\n' +
                            '+ Có hiện tượng mọc rêu tại những đường ống nước đi qua...\n' +
                            '+ Bồn chứa cạn nước vào buổi sáng, mặc dù không sử dụng vào tối hôm trước.\n' +
                            '+ Áp lực nước yếu, ngay cả trong những thời gian dùng nước ít.\n' +
                            '+ Hầu hết các hệ thống đường ống nước đều được thiết kế âm.' +
                            'Do đó khi xảy ra hiện tượng rò rỉ nước thì rất khó khăn trong việc xác định vị trí rò rỉ. Vì vậy, bạn cần tìm đến dịch vụ dò tìm rò rỉ nước với kinh nghiệm cùng máy móc đầy đủ để khắc phục\n',
                      ),
                      GioiThieuMayDo(
                        urlDVCT: url + '2_abb_stethophon_04_funk_mit_zubehoer_06.jpg',
                        titleDVCT: 'Máy Dò SEWERIN',
                        contentDVCT:
                        'Một trong những thiết bị được nhập khẩu trực tiếp từ Đức. Có khả năng dò tìm được vị trí ống nước bể ngầm độ sâu từ 2 đến 3 m. Kết hợp với các thiết bị trong cùng bộ công cụ thì dòng máy SEWERIN là một đối thủ nặng ký trong lĩnh vực dò tìm nước âm rò rỉ.',
                      ),
                      GioiThieuMayDo(
                        urlDVCT: url + 'images.jpg',
                        titleDVCT: 'Máy dò nước Gen Ear',
                        contentDVCT:
                        'Xuất sứ từ Mỹ.  Sử dụng cảm biến mặt đất băng tần khá lớn. Độ nhạy: 1,00V / g ở 400 Hz (Tối đa).',
                      ),
                      GioiThieuMayDo(
                        urlDVCT: url + 's-l300-1.jpg',
                        titleDVCT: 'Máy Dò Hydro Lux',
                        contentDVCT:
                        'Là máy dò tìm chuyên dụng dành cho các đường ống có dộ sâu lớn, qua nhiều vật liệu cứng như nền xi măng, đường nhựa, bê tông... sửa dụng công nghệ Xem và nghe rò rỉ với công nghệ DSA với chất lượng âm thanh cao.',
                      ),
                      CTYThoViet(),
                    ],
                  ))
            ],
          ),
        )],
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
