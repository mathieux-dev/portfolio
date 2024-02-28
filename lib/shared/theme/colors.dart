import 'package:flutter/material.dart';

class ColorsTheme {
  static const Color light100 = Color(0xffeefcf3);
  static const Color light200 = Color(0xffddf9e8);
  static const Color light300 = Color(0xffbaf2d1);

  static const Color medium100 = Color(0xff86e9ae);
  static const Color medium200 = Color(0xff53df8b);
  static const Color medium300 = Color(0xff20ac58);

  static const Color heavy100 = Color(0xff16793e);
  static const Color heavy200 = Color(0xff0d4523);
  static const Color heavy300 = Color(0xff062212);

  static const Color neutral100 = Color(0xffffffff);
  static const Color neutral200 = Color(0xffbebebe);
  static const Color neutral300 = Color(0xff626262);
  static const Color neutral400 = Color(0xff000000);

  static const Color support100 = Color(0xfffd5368);
  static const Color support200 = Color(0xfffd9f50);
  static const Color support300 = Color(0xfffddc57);
  static const Color support400 = Color(0xff5170fd);

  static MaterialColor createMaterialColor(Color color) {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
