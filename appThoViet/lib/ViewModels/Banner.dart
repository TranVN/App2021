import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get(
      '192.168.1.10:8080/dashboard_app/pages/mobile/khach_app/data/getBanner.php');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final String url;

  Photo({this.url});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      url: json['url'] as String,
    );
  }
}

class BannerImg extends StatefulWidget {
  @override
  _BannerImgState createState() => _BannerImgState();
}

class _BannerImgState extends State<BannerImg> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotosList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Image.network(
            '192.168.1.10:8080/dashboard_app/' + photos[index].url);
      },
    );
  }
}
