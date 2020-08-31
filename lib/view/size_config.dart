import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenHeight;
  static double screenWidth;
  static Orientation orientation;

  void init(context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double height) {
  return (height / 814.0) * SizeConfig.screenHeight;
}

double getProportionateScreenWidth(double width) {
  return (width / 377.0) * SizeConfig.screenWidth;
}
