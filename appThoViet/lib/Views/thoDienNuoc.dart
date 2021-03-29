import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:flutter/material.dart';
import '../ViewModels/ActionCard.dart';

var url = 'lib/images/thoDienNuoc/';

class ThoDienNuoc extends StatelessWidget {
  const ThoDienNuoc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Thợ Ống Nước'),
      ),
      body: ThoDienNuocWidget(),
    );
  }
}

class ThoDienNuocWidget extends StatefulWidget {
  @override
  _ThoDienNuocState createState() => _ThoDienNuocState();
}

class _ThoDienNuocState extends State<ThoDienNuocWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return SingleChildScrollView(
      child: Container(
        padding:  EdgeInsets.only(left: sizeWidth*2, right: sizeWidth*2),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Card(
                      shadowColor: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        child: Text('Với đội ngũ thợ điện nước chuyên nghiệp, Thợ Việt nhận  thi công, lắp đặt, sửa chữa hệ thống nước cấp, hệ thống nước thoát nước cho gia đình, cơ quan, công ty, xí nghiệp.' +
                            "\n– Thợ lắp đặt nước dân dụng, lắp đặt hệ thống nước gia đình, cơ quan, công ty." +
                            "\n– Thợ sửa chữa hệ thống ống nước tại nhà,hệ thống ống nước lớn ống nước PPR, ống sắt" +
                            "\n– Công ty Thợ Việt nhận làm từ những việc nhỏ nhất." +
                            "\n– Mạng lưới phục vụ khắp các quận Tp.Hồ Chí Minh."),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(
                            url + 'Banner-sua-dien-nuoc-dien-lanh-hcm.jpg',
                            width: sizeWidth*95,
                            height: sizeHeight*45,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    ActionCardButton(),
                    ContentApp(
                      titleCTA: 'Thợ Sửa Ống Nước Âm - Nổi',
                      textCTA: '– Thi công lắp đặt, tu sửa, xữ lý các trang thiết bị tolet.\n' +
                          '– Nhận thi công lắp đặt máy nước nóng, bình nóng lạnh. +Thợ lắp đặt, sửa máy bơm nước các loại.\n' +
                          '– Chuyên sửa chữa ống nước rò rỉ âm tường âm nền.' +
                          '– Kiểm tra dò tìm rò rỉ nước xác định chính xác vị trí đường ống nước ngầm bị bể gây rò rỉ thất thoát nước.\n' +
                          '– Sửa chữa máy bơm nước, sửa bồn nước bị tràn bồn. Chống thấm tường sàn nhà vệ sinh, chống hôi nhà tắm, toilet.\n' +
                          '– Thợ lắp đặt thiết bị vệ sinh bồn cầu, lavabo, bồn tiểu. Sửa bộ xả bồn rửa tay, rửa chén bát.\n' +
                          '– Thông nghẹt ống nước, thông thoát sàn toilet, thông bồn cầu, sửa bồn cầu bị chảy nước, tắc nghẹt.\n' +
                          '– Vệ sinh bồn chứa nước gia đình, súc rửa bể chứa nước tòa nhà công ty.\n' +
                          '  Ngoài ra: Thợ Việt còn cung cấp đội ngũ thợ điện lạnh chuyên dịch vụ như lắp đặt máy lạnh, sửa điện lạnh, sửa chữa máy lạnh, tủ lạnh, vệ sinh rửa máy lạnh, lắp đặt, sửa chữa vệ sinh máy giặt, lắp đặt sửa chữa máy tắm nóng, sửa lò vi sóng….\n',
                    ),
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
                              image: AssetImage(url +
                                  'Lap-ong-nuoc-nong-nang-luong-mat-troi-cho-nha-dan-tan-phu-1.jpg'),
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
                              image: AssetImage(url +
                                  'Lap-ong-nuoc-nong-nang-luong-mat-troi-cho-nha-dan-tan-phu-8.jpg'),
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
                    ActionCardButton(),
                    Card(
                      shadowColor: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.only(left: sizeWidth*2, right: sizeWidth*2, top: sizeHeight*1, bottom: sizeHeight*1),
                        child: Text(
                          'Nguyên tắc làm việc – Quy trình của thợ sửa điện nước Thợ Việt:',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    ContentApp(
                      titleCTA: 'I. Nguyên tắc làm việc của Thợ Việt',
                      textCTA: '_ Luôn báo giá cho Khách hàng trước khi lắp đặt, sửa chữa.\n' +
                          '_ Nhanh chóng sửa chữa kịp thời giúp Khách hàng tiết kiệm thời gian, đưa hoạt động kinh doanh, sản xuất trở lại bình thường.\n' +
                          '_ Tuyệt đối không bày vẽ câu giờ làm tốn chi phí Khách hàng, tốn thời gian chờ đợi!\n' +
                          '_ Nếu Khách hàng không hài lòng có thể gọi yêu cầu Cty đổi thợ khác!\n' +
                          'Thợ Việt có đội ngũ  kỹ thuật viên nhiệt tình chu đáo. Phong cách làm việc chuyên nghiệp và các máy móc hiện đại.\n',
                    ),
                    ContentApp(
                      titleCTA: 'II. Quy trình làm việc của Thợ Việt',
                      textCTA: 'Với nhiều năm kinh nghiệm trong ngành điện nước bên cạnh đó là đội ngũ nhân viên đông đảo nhiều thợ có kinh nghiệm nhiều năm trong lĩnh vực sửa chữa thi công điện nước dân dụng, điện nước công nghiệp.\n' +
                          'Thợ Việt đã và đang hoàn thiện Quy Trình làm việc để phục vụ tốt nhất cho mọi Quý Khách. Dưới đây là quy trình làm việc của chúng tôi:\n' +
                          ' 1. Tiếp nhận thông tin Khách Hàng qua Hotline: 0903.532.938  Hoặc qua các mạng xã hôi như  ZALO, FACEBOOK.\n' +
                          '2. Nhân viên sẽ sắp xếp thợ phù hợp nhất để tiến xử lý yêu cầu của Quý Khách( vị trí, mức độ công việc,….)\n' +
                          '3. Thợ làm xong, Thợ Việt sẽ lưu thông tin của Quý Khách. Việc lưu lại thông tin này nhằm mục đích Bảo Hành cho Quý Khách. Ngoài ra nhưng thông tin này của Khách Hàng hoàn toàn được bảo mật tại công ty.\n',
                    ),
                    ActionCardButton(),
                    ContentApp(
                      titleCTA:
                      'III. Tiếp nhận thông tin bảo hành – ý kiến đóng góp của Khách Hàng',
                      textCTA: 'Thợ Việt luôn có gắng để đem lại chất lượng dịch vụ tốt nhất cho Quý Khách. Thợ Việt luôn mong muốn nhận được các ý kiến phản hồi dịch vụ. Dưới đây là 3 cách mà Quý Khách có thể phản hồi cho Thợ Việt:\n' +
                          ' 1. Phản Hồi trực tiếp qua tổng đài công ty Hotline: 0903.532.938; hoặc liên hệ cho quản lý công ty qua số liên hệ: 0919 532 938.\n' +
                          '2. Đóng góp ý kiến phản hồi dịch vụ tại trang đánh Giá Chất Lượng Dịch Vụ của Thợ Việt.' +
                          '3. Gửi phản hồ qua FanPage  Công ty Thợ Việt hoặc bản đồ Công ty Thợ Việt.\n' +
                          'Thợ Việt luôn cố gắng bảo mang đến cho khách hàng những dịch vụ tốt nhất với giá thành rẻ nhất.\n',
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Khi có nhu cầu lắp đặt, sửa chữa điện nước hãy liên hệ ngay cho Thợ Việt để được thi công xử lý nhanh chóng. Rất hân hạnh được phục vụ khách hàng.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
