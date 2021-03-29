import '../Views/datLich.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionCardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Bảng giá tham khảo, ngoài ra Thợ Việt còn nhiều dịch vụ khác vui lòng liên hệ hoặc đặt lịch để nhận báo giá chi tiết.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: sizeHeight*2,
        ),
        Card(
          elevation: 5,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: sizeWidth*15),
                  child: IconButton(
                    icon: Icon(Icons.call),
                    color: Colors.green[600],
                    tooltip: 'Hotline: 0903532938',
                    onPressed: () {
                      launch("tel:0903532938");
                    },
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: sizeWidth*15),
                  child: IconButton(
                    icon: Icon(Icons.list_alt),
                    color: Colors.green[600],
                    tooltip: 'Đặt Lịch',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DatLich()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ActionCallOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        color: Colors.green,
        onPressed: () {
          launch("tel:0903532938");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Icon(
            Icons.call,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
