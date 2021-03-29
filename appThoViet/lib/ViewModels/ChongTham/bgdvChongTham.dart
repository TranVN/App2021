import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:flutter/material.dart';

import '../ActionCard.dart';
import '../ctyThoViet.dart';

class BGChongTham extends StatefulWidget {
  @override
  _BGChongThamState createState() => _BGChongThamState();
}

class _BGChongThamState extends State<BGChongTham> {
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
                      Container(
                        width: sizeWidth*96,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Text(
                              'Bảng Giá Dịch Vụ Chống Thấm',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.indigo),
                            ),
                          ),
                        ),
                      ),
                      ActionCardButton(),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 1',
                        contentCT:
                        'Khắc phục hiện tượng nứt, khe nứt, khe co giản, khe lún, nứt mao dẫn sàn bê tông bằng Grout Quicseal 201, Mariseal 250, vải polyester, Mariseal aqua prime',
                        subtitleCT: 'Giá từ: 150,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 2',
                        contentCT:
                        'Chống thấm sàn bê tông, bằng giải pháp phủ màng chống thấm dạng lỏng liền mạch; vật liệu chống thấm gốc polyurethane, arylic 1 thành phần đồng nhất',
                        subtitleCT: 'Giá từ: 270,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 3',
                        contentCT:
                        'Chống thấm tường, ban công, vách tầng hầm, hố sụt tầng hầm,bằng màng chống thấm dạng lỏng gốc polyurethane (Mariseal 250), chất chống thấm dạng tinh thể thẩm thấu xi măng Quicseal 111, Quicseal 104s. (Giá trên chưa bao gồm chi phí tạo lớp gia cố bảo vệ màng',
                        subtitleCT: 'Giá từ: 300,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 4',
                        contentCT:
                        'Dùng hóa chất chống thấm dạng lỏng; Quicseal 104S, 103, 124 và Mariseal 250, kết hợp chất chống thấm tinh thể thẩm thấu xi măng Quicseal 111, trong xử lý chống thấm bể bơi, vách tầng hầm, sàn nhà vệ sinh, hố thang máy, sênô, logia',
                        subtitleCT: 'Giá từ: 170,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 5',
                        contentCT:
                        'Chống thấm sàn mái, sàn bê tông,  bằng Quicseal 104s. Là vật liệu chống thấm mới: dạng lỏng, một thành phần; có nguồn gốc tinh thể xi măng và polymer. Sản phẩm thân thiện với thiên nhiên và con người (cần tạo lớp gia cố bảo vệ bề mặt).',
                        subtitleCT: 'Giá từ: 150,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 6',
                        contentCT:
                        'Dùng vải không dệt polyester chống nứt, grout Quicseal 201, kết hợp với màng chống thấm gốc Arylic có độ đàn hồi cao. Ngăn ngừa chống thấm tường, rò rỉ nước do tường bị nứt chân chim hiệu quả nhất.',
                        subtitleCT: 'Giá từ: 136,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 7',
                        contentCT:
                        'Khu vực ẩm ướt, ngưng đọng nước như; hạng mục chống thấm: bể bơi, ban công, nhà tắm, tầng hầm, mương thu nước bê tông, hố PIT thang máy được đề xuất sử dụng vật liệu tạo màng ngăn nước 2 thành phần gốc polymer kết hợp tinh thể thẩm thấu xi măng Quicseal 111, Aquafin 2K, hoặc Mariseal 300 (cần tạo lớp bảo vệ màng).',
                        subtitleCT: 'Giá từ: 200,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 8',
                        contentCT:
                        'Chống thấm nhà vệ sinh,nhà bếp, bồn nước, chậu hoa, đường ống nước, công trình có sắt thép lộ thiên bằng phương pháp dùng vật liệu chống thấm Mariseal 250, Mariseal 300, Quicseal 124 dạng lỏng gốc acrylic, siêu bám dính, kháng nước hữu hiệu chống thấm có độ đàn hồi, độ giãn dài của màng phủ > 400%.',
                        subtitleCT: 'Giá từ: 350,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 9',
                        contentCT:
                        'Chống thấm, dột mái tole , dùng vật liệu tạo màng ngăn nước - GỐC POLYURETHANE, grout Quicseal 201, vải polyester. Chịu đựng được sự khắc nghiệt của thời tiết.',
                        subtitleCT: 'Giá từ: 70,000 đ/m²',
                      ),
                      BangGia(
                        titleCT: 'Phương án thi công chống thấm 10',
                        contentCT:
                        'Chống thấm tường , sàn, trần, senô, balcony bằng màng chống thấm 1 thành phần đồng nhất, gốc epoxy (Unipoxy, sporthane, mariseal 250, 300 chịu nhiệt từ -30 đến 90 độ c, độ giãn dài >800%, sản phẩm được khuyên dùng cho các hạng mục xây dựng dân dụng và công nghiệp.',
                        subtitleCT: 'Giá từ: 370,000 đ/m²',
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
