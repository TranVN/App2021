import 'package:flutter/material.dart';
import '../ViewModels/contentApp.dart';
import 'ActionCard.dart';

var url = 'lib/images/thoMoc/';

class SuaDoGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MayNuocNongNLMTWidget(),
    );
  }
}

class MayNuocNongNLMTWidget extends StatefulWidget {
  @override
  _MayNuocNongNLMTWidgetState createState() => _MayNuocNongNLMTWidgetState();
}

class _MayNuocNongNLMTWidgetState extends State<MayNuocNongNLMTWidget> {
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
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text('   Là một trong những đơn vị dẫn đầu về lĩnh vực sơn sửa đồ gỗ nội thất tại nhà. Chúng tôi luôn lấy tiêu chuẩn chất lượng cao để cung cấp dịch vụ khách hàng. Bằng việc sử dụng các công nghệ, máy móc hiện đại.\n' +
                              '   Cộng thêm đội ngũ thợ sửa chữa chuyên nghiệp, có tay nghề cao. Thợ Việt đã mang đến những giá trị thật sự về thời gian, chất lượng và giá cả.\n' +
                              '   Cho dù mục đích của bạn là sửa chữa, khôi phục hay thay đổi màu sắc đồ gỗ đề phù hợp với không gian sống. Đội ngũ nhân viên chúng tôi đều đáp một cách tốt nhất.'),
                        ),
                      ),
                      ActionCardButton(),
                      new Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'fix_tho-moc-son-sua-do-go-61.jpg',
                              width: sizeWidth*95,
                              height: sizeHeight*45,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                '– Báo giá sơn sửa đồ gỗ nhanh chóng cho Khách hàng qua zalo: 0903532938.\n' +
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
                        titleCTA: 'Lợi ích của Thợ Việt mang lại cho Khách hàng',
                        textCTA: '+ Mang lại sự phong phú, đa dạng cho khách hàng với hàng nghìn bảng màu sắc có sẳn.\n' +
                            '+ Với một cái nhìn chuyên nghiệp, các chuyên gia của chúng tôi có thể phối hợp màu một cách hài hòa nhất.\n' +
                            '+ Các loại sơn của chúng tôi đều có chất lượng tốt nhất trên thị trường hiện nay.\n' +
                            '+ Sửa chữa đồ gỗ nội thất một cách nhanh chóng.',
                      ),
                      new Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset(
                              url + 'fix_tho-moc-son-sua-do-go-65.jpg',
                              width: 400,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      ContentApp(
                        titleCTA: 'Dịch vụ sơn sửa lại đồ gỗ nội thất\n',
                        textCTA:
                        '– Sơn sửa cửa sổ, cửa thông phòng, cửa đi bị sập xệ khó đóng hư hỏng cong vênh.' +
                            '\n– Sửa chữa, sơn lại bàn ghế, giường tủ, thay hậu tủ, thay đợt tủ.' +
                            '\n– Tủ bếp bị mốt một, xập xệ, xuống cấp.' +
                            '\n– Sửa sơn lại cầu thang, lan can.' +
                            '\n– Sàn gỗ bị co ngót.',
                      ),
                      ContentApp(
                        titleCTA: 'Quy trình tiếp nhận thông tin sơn sửa đồ gỗ nội thất',
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
