import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const mellowApricot = Color(0xFFF3B476);
  static const sandyBrown = Color(0xFFFEA14E);
  static const tanCrayola = Color(0xFFD6996B);
  static const bisque = Color(0xFFFEE3BC);
  static const spaceCadet = Color(0xFF303345);
  static const jet = Color(0xFF313341);
  static const manatee = Color(0xFF9C9EAA);
  static const spanishGray = Color(0xFF9A938C);
  static const white36 = Color(0x5CFFFFFF);
  static const white30 = Color(0x4DFFFFFF);
  static const white70 = Color(0xB3FFFFFF);
  static const white50 = Color(0x80FFFFFF);
  static const gradientTanCrayolaSandyBrown = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[Colors.white, sandyBrown]);
}
