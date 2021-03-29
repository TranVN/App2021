import 'package:flutter/material.dart';

class BangGia extends StatelessWidget {
  BangGia({this.titleCT, this.contentCT, this.subtitleCT});
  final String titleCT;
  final String contentCT;
  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(titleCT,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text(contentCT, style: TextStyle(color: Colors.indigoAccent),),
              subtitle: Text(
                subtitleCT,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.redAccent,
                    fontStyle: FontStyle.italic,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
