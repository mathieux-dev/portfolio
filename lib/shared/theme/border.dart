import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/colors.dart';

class BorderTheme {
  /// Border with width 1px (border-width-100)
  static Border w100({Color color = ColorsTheme.neutral300}) {
    return Border.all(width: 1, color: color);
  }

  /// Border with width 2px (border-width-200)
  static Border w200({Color color = ColorsTheme.neutral300}) {
    return Border.all(width: 2, color: color);
  }

  /// Border bottom with width 1px (border-width-300)
  static Border w300({Color color = ColorsTheme.neutral200}) {
    return Border(bottom: BorderSide(width: 1, color: color));
  }

  /// Border radius 0 (border-radius-none)
  static BorderRadius none = BorderRadius.circular(0);

  /// Border radius with 3px (border-radius-100)
  static BorderRadius r100 = BorderRadius.circular(3);

  /// Border radius with 30px (border-radius-900)
  static BorderRadius r900 = BorderRadius.circular(30);
}
