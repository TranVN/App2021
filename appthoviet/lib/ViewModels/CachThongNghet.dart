import 'package:flutter/material.dart';

class CachThongNghet extends StatelessWidget {
  CachThongNghet({this.titleCach, this.urlcach, this.contCach});
  final String titleCach;
  final String urlcach;
  final String contCach;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              titleCach,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            urlcach,
            fit: BoxFit.cover,
            width: 400,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(contCach),
          )
        ],
      ),
    );
  }
}
