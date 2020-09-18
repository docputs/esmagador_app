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
  final screenHeight = SizeConfig.screenHeight;
  return (height / 814.0) * screenHeight;
}

double getProportionateScreenWidth(double width) {
  final screenWidth = SizeConfig.screenWidth;
  return (width / 377.0) * screenWidth;
}
