import '../ViewModels/contentApp.dart';
import 'package:flutter/material.dart';
import 'ActionCard.dart';

var url = 'lib/images/thoMoc/';

class DongMoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinMatTroiWidget(),
    );
  }
}

class PinMatTroiWidget extends StatefulWidget {
  @override
  _PinMatTroiWidgetState createState() => _PinMatTroiWidgetState();
}

class _PinMatTroiWidgetState extends State<PinMatTroiWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: new ListView(
        children: <Widget>[Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text('Mạng lưới phục vụ của Thợ mộc đóng mới đồ gỗ rộng khắp các quận TP.HCM: \n' +
                              '   – Thợ sửa giường tủ gỗ tại nhà quận 1, quận 2, quận 3, quận 4, quận 5, quận 6, quận 7, quận 8, quận 9, quận 10, quận 11, quận 12\n' +
                              '   – Thợ sửa giường tủ gỗ tại nhà quận Phú Nhuận, quận Bình Thạnh, quận Gò Vấp, quận Tân Bình, quận Tân Phú, quận Thủ Đức, quận Bình Tân, huyện Bình Chánh.'),
                        ),
                      ),
                      ActionCardButton(),
                      new Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'tho-moc-son-sua-do-go-68.jpg',
                              width: sizeWidth*95,
                              height: sizeHeight*45,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                '– Báo giá sơn sửa, đóng mới đồ gỗ nhanh chóng cho Khách hàng qua zalo: 0903532938.\n' +
                                    '– Thợ Việt cam kết các thợ mộc công ty kinh nghiệm trên 10 năm trong nghề mộc, thợ đã được Công ty quản lý hồ sơ lý lịch, giúp Khách hàng yên tâm, đảm bảo an toàn cho gia đình.\n' +
                                    '– Thợ Việt có xuất hoá đơn đỏ, nhận thanh toán chuyển khoản.\n' +
                                    '– Quý Khách không hài lòng nhân viên, Thợ Việt sẽ đổi thợ khác, Công ty luôn mong muốn Quý Khách hài lòng khi sử dụng dịch vụ.\n' +
                                    '– Thợ Việt thành lập từ năm 2011, dịch vụ điện nước, điện lạnh, mộc nhận được sự tin yêu của người Sài Gòn!',
                                style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      ContentApp(
                        titleCTA: 'Dịch vụ đóng mới đồ gỗ Thợ Việt',
                        textCTA: '+ Đội ngũ thợ mộc Thợ Việt chuyên đóng mới, sửa chữa đồ gỗ chuyên nghiệp, nhanh nhẹn, thân thiện đảm bảo sẽ làm Bạn hài lòng 100%.\n' +
                            '+ Uy tín dịch vụ của công ty chúng tôi đã được khách hàng đánh giá và chứng thực.\n' +
                            '+ Bạn có thể yên tâm rằng đồ gỗ của mình được sửa chữa, sơn sửa và phục hồi với tiêu chuẩn cao nhất.\n' +
                            'Sử dụng công nghệ hiện đại kết hợp với chất lượng vật liệu tốt nhất. Công ty chúng tôi luôn luôn đặt lợi ích của bạn lên hàng đầu.',
                      ),
                      new Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'tho-moc-son-sua-do-go-57.jpg',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      ContentApp(
                        titleCTA: 'Quy trình tiếp nhận thông tin đóng mới đồ gỗ nội thất',
                        textCTA: '– Tiếp nhận thông tin khách hàng.' +
                            '\n– Cho nhân viên tới khảo sát, tư vấn, báo giá.' +
                            '\n– Sau khi thống nhất, chúng tôi triển khai công việc.' +
                            '\n– Quý khách nghiệm thu công việc sau khi hoàn thành.' +
                            '\n– Thanh toán và viết hóa đơn.',
                      ),
                      Card(
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                            'Cùng Thợ Việt trải nghiệm chất lượng dịch vụ sơn sửa đồ gỗ nội thất tại nhà với đội ngũ có tay nghề cao. Luôn chuyên nghiệp, nhiệt tình mọi lúc, mọi nơi mà khách hàng yêu cầu..',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                    ],
                  ))
            ],
          ),
        )],
      ),
    );
  }
}
