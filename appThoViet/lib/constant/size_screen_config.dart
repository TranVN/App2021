import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double sizeScreenWidth;
  static double sizeScreenHeight;
  static double widthScreen;
  static double heightScreen;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    sizeScreenWidth = _mediaQueryData.size.width;
    sizeScreenHeight = _mediaQueryData.size.height;
    widthScreen = sizeScreenWidth / 100;
    heightScreen = sizeScreenHeight / 100;
  }
}
