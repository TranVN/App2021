import 'package:appthoviet/ViewModels/ChongTham/gtdvChongTham.dart';
import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../contentApp.dart';
import '../ctyThoViet.dart';

// khai bao bien
var url = 'lib/images/VSBN/';

class GioiThieuVSBonNuoc extends StatefulWidget {
  @override
  _GioiThieuVSBonNuocState createState() => _GioiThieuVSBonNuocState();
}

class _GioiThieuVSBonNuocState extends State<GioiThieuVSBonNuoc> {
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
                          child: Text(" Thợ Vệ sinh bồn nước Thợ Việt nhận Vệ sinh bồn nước có dung tích từ 0.5 m3 đến trên 20m3. Thợ Việt cung cấp bảng giá Vệ sinh bồn nước tham khảo cho Bạn.\n" +
                              '   Thời gian vệ sinh còn tùy thuộc khá lớn vào nguồn nước và mức độ sử dụng nước của từng bồn.\n' +
                              '   Tuy vậy, Bạn nên vệ sinh định kỳ bồn chứa nước 3 tháng 1 lần. Để đảm bảo nguồn nước được chứa trong bồn luôn sạch sẽ bảo đảm an toàn cao nhất cho sức khỏe của Bạn và Gia đình.'),
                        ),
                      ),
                      ActionCardButton(),
                      new GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(5),
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        shrinkWrap: true,
                        children: <Widget>[
                          HinhContent(
                            urlImage: url +
                                'fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-1.jpg',
                          ),
                          HinhContent(
                            urlImage: url +
                                'fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-7.jpg',
                          ),
                          HinhContent(
                            urlImage: url +
                                'fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-9.jpg',
                          ),
                        ],
                      ),
                      ContentApp(
                        titleCTA:
                        'Một số tác hại nếu Bạn không vệ sinh, súc rửa bồn nước định kỳ:',
                        textCTA: '+ Bồn nước sau khi sử dụng một thời gian sẽ chứa cát, rong rêu. Sẽ gây tắc nghẽn đường ống dẫn nước. Dẫn đến vòi nước chảy yếu, chảy chậm, và lâu dần sẽ tắc nước\n' +
                            '+ Bồn nước dùng lâu ngày sẽ tích tụ lượng phèn gây rỉ sét. Gây hư hỏng bồn rò rỉ, mục bồn inox - đặc biệt đối với khu vực dùng nước giếng.\n' +
                            '+ Nhiều bằng chứng khoa học cho thấy, các loại virus, vi khuẩn trong nguồn nước. Thủ phạm chính gây ra 85% các bệnh nhi khoa và 65% bệnh tật của người lớn.\n' +
                            '+ Một số trường hợp nước cấp từ bồn nước xuống yếu do đường ống bị tắc nghẹt, thông nghẹt đường ống.\n' +
                            '+ Nước cấp thuỷ cục có chứa Clorin tác dụng với luppe máy bơm bằng gang làm phát sinh vi khuẩn sắt. Làm hư hại các đường ống luppe, hư luppe, một số luppe nước PCCC. Gây hư hại làm nước trong ống chảy về bể chứa gây ô nhiễm nặng, có mùi hôi khó chịu.\n' +
                            '+ Một số trường hợp sử dụng nguồn nước bẩn do bồn chứa nước bị ô nhiễm. Gây bị dị ứng da, bị viêm đường ruột, về lâu dài rất hại sức khỏe con người, đặc biệt là trẻ nhỏ.\n' +
                            '+ Vi khuẩn sắt làm bồn inox lâu ngày bị rỉ sét, gây lũng bồn chứa, thất thoát nước. Bạn phải tốn tiền hàn bồn, hoặc thay mới bồn inox khác.',
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
