import 'package:flutter/material.dart';
import '../ctyThoViet.dart';

var url = 'lib/images/doNuocRoRi/';

class BGVSBonNuoc extends StatefulWidget {
  @override
  _BGVSBonNuocState createState() => _BGVSBonNuocState();
}

class _BGVSBonNuocState extends State<BGVSBonNuoc> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return Scaffold(
      body: ListView(
        children: <Widget>[Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        width: sizeWidth*96,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Bảng giá vệ sinh bồn nước inox, bồn nhựa',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      BangGiaVSBN(
                        titleCT: 'Vệ sinh bồn dưới 500 lít',
                        subtitleCT: 'Giá từ: 250.000đ - 350.000đ',
                      ),
                      BangGiaVSBN(
                        titleCT: 'Vệ sinh bồn Từ 500 - 1000 lít',
                        subtitleCT: 'Giá từ: 350.000đ - 450.000đ',
                      ),
                      BangGiaVSBN(
                        titleCT: 'Vệ sinh bồn Từ 1500 - 2000 lít',
                        subtitleCT: 'Giá từ: 450.000đ - 550.000đ',
                      ),
                      BangGiaVSBN(
                        titleCT: 'Vệ sinh bồn Từ 2000 - 5000 lít',
                        subtitleCT: 'Giá từ: 500.000đ - 650.000đ',
                      ),
                      BangGiaVSBN(
                        titleCT: 'Vệ sinh bồn Trên 5.000 lít',
                        subtitleCT: 'Khảo sát báo giá trước khi làm',
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '(Bảng giá vệ sinh bồn nước mang tính chất tham khảo. Hãy liên hệ chúng tôi để biết giá chính xác nhất.)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                        ),
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

class BangGiaVSBN extends StatelessWidget {
  BangGiaVSBN({this.titleCT, this.subtitleCT});
  final String titleCT;

  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
              child: new Text(titleCT,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              subtitle: Text(
                subtitleCT,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.redAccent,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
