import '../../ViewModels/CachThongNghet.dart';
import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/thongNghet/';

class GioiThieuTT extends StatefulWidget {
  @override
  _GioiThieuTTState createState() => _GioiThieuTTState();
}

class _GioiThieuTTState extends State<GioiThieuTT> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[Container(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 10),
                      Card(
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                              'Thợ Việt chuyên cung cấp dịch vụ thông tắc cầu cống tại HCM. Nhận thông bồn cầu, ống thoát nước, thoát sàn nhà vệ sinh. Xử lý triệt để các sự cố nghẹt nhanh chóng và triệt để. Với đội ngũ nhiều năm kinh nghiệm cùng trang thiết bị hiện đại. Hỗ trợ nhanh chóng với chi phí thấp nhất.'),
                        ),
                      ),
                      ActionCardButton(),
                      ContentApp(
                        titleCTA: 'Dịch vụ thông nghẹt của Thợ Việt bao gồm:',
                        textCTA: '– Thông cầu nghẹt, thông cống nghẹt, thông ống thoát nước.\n' +
                            '– Thông nghẹt toilet, bể phốt, chậu rửa, thoát sàn, các loại đường cống ngầm.\n' +
                            '– Lắp đặt hệ thống ngăn mùi, xử lý triệt để mùi hôi nhà vệ sinh.',
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Thợ Việt có đội ngũ kỹ thuật viên nhiệt tình chu đáo, phong cách làm việc chuyên nghiệp và các máy móc hiện đại, đảm bảo mang đến cho khách hàng những dịch vụ tốt nhất với giá thành rẻ nhất. Khách hàng có thể hoàn toàn yên tâm khi sử dụng dịch vụ của Thợ Việt.\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Cách thông nghẹt bồn cầu tại nhà',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      CachThongNghet(
                        titleCach: 'Cách 1: Sử dụng đồ thụt cầu bằng cao su:',
                        urlcach: url + 'cach-thong-tac-bon-cau.jpg',
                        contCach:
                        '– Bạn ra tiệm điện nước và mua một cái thụt cầu cao su. Chi phí khoảng 50.000- 100.000 đồng nhưng bạn có thể sử dụng nhiều lần\n' +
                            ' – Chèn thụt bồn cầu vào lỗ cầu và ấn xuống chậm mà chắc. Hãy chắc chắn rằng bạn bít chặt lỗ bồn cầu và pít-tông cần được nhấn chìm trong nước để đạt được hiệu quả. Điều quan trọng là phải đẩy và kéo bằng nước và không khí. Xả thêm nước vào bồn nếu cần thiết. Bạn kéo mạnh pít-tông lên trên để tạo lực hút, sau đó ấn xuống để tạo áp lực. Làm đi làm lại vài lần để thông tắc.',
                      ),
                      CachThongNghet(
                        titleCach: 'Cách 2: Sử dụng móc áo thông nghẹt',
                        urlcach: url + 'thong-tac-bon-cau-bang-moc-quan-ao.jpg',
                        contCach: 'Cách này chỉ hiệu quả nếu vật gây tắc ở gần miệng bồn cầu.\n' +
                            '+ Bẻ móc áo mở ra như trong hình. Để tránh tránh làm hỏng lớp men của bồn cầu, quấn chặt một đầu với vải. Bạn nên buộc chắc để tránh lớp vải bung ra khi thông bồn cầu sẽ khiến càng tắc nghẽn.\n' +
                            '+ Nhét một đầu mắc áo vào trong ống thoát nước bồn cầu. Một khi đã vào trong, nhẹ nhàng xoay và đẩy để thông vật gây tắc nghẽn.',
                      ),
                      CachThongNghet(
                        titleCach: 'Cách 3: Sử dụng dây lò xo thông tắc',
                        urlcach: url + 'thong-bon-cau-bang-day-lo-xo-1.jpg',
                        contCach:
                        ' + Bạn ra cửa hàng điện nước mua dây lò xo thông tắc. Tuỳ theo kích thước, nếu dài 5m thường có giá khoảng 100.000 đồng. Dây có cấu tạo như lò xo có thể đi qua tất cả các khúc gấp của bồn cầu. Khi luồn dây vào bồn cầu thấy vướng thì xoay tay cầm. Rác và tóc sẽ cuốn vào đầu của dây lò xo.\n',
                      ),
                      CachThongNghet(
                        titleCach:
                        'Cách 4: Thông bồn cầu nghẹt: Sử dụng băng keo, băng dính',
                        urlcach: url + 'thong-bon-cau-bang-bang-dinh-keo.jpg',
                        contCach: '+ Dùng băng keo băng kín miệng bồn cầu lại, hoặc một miếng nylon trùm quanh bồn cầu, rồi dán chặt các góc, càng chắc càng tốt.\n' +
                            '+ Tiến hành nhấn nút xả nước vào bồn cầu, cùng lúc đó Bạn dùng 2 tay đẩy vào giữa để tạo ra áp lực nén đẩy vật bị nghẹt trôi đi.\n' +
                            '+ Nguyên lý của miếng dán băng keo thực chất cũng giống như chiếc thụt cao su, chỉ khác ở chỗ nó bao trùm toàn bộ bồn cầu. Khi ấn xuống, không khí được đẩy thẳng vào ống, tạo ra sự chênh lệch về áp suất.\n' +
                            '+ Sau đó lực đàn hồi sẽ kéo miếng dán lên, tạo ra lực hút tác động lên vật thể gây tắc. Làm đi làm lại vài lần, bồn cầu sẽ đột nhiên thoát nước như chưa có gì xảy ra.',
                      ),
                      CTYThoViet()
                    ],
                  ))
            ],
          ),
        )],
      ),
    );
  }
}
