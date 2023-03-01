// set constant config here
import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // width and height initialization
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
  }
}
