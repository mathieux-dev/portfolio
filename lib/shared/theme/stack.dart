import 'package:flutter/material.dart';

enum SideHorizontalStack { right, left, all }

enum SideVerticalStack { top, bottom, all }

class StackTheme {
  /// Margin with 8px (stack-horizontal-100)
  static EdgeInsets horizontal100(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 8);

  /// Margin horizontal with 12px (stack-horizontal-150)
  static EdgeInsets horizontal150(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 12);

  /// Margin horizontal with 16px (stack-horizontal-200)
  static EdgeInsets horizontal200(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 16);

  /// Margin horizontal with 20px (stack-horizontal-300)
  static EdgeInsets horizontal300(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 20);

  /// Margin horizontal with 24px (stack-horizontal-400)
  static EdgeInsets horizontal400(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 24);

  /// Margin horizontal with 32px (stack-horizontal-500)
  static EdgeInsets horizontal500(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 32);

  /// Margin horizontal with 40px (stack-horizontal-600)
  static EdgeInsets horizontal600(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 40);

  /// Margin horizontal with 48px (stack-horizontal-700)
  static EdgeInsets horizontal700(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 48);

  /// Margin horizontal with 56px (stack-horizontal-800)
  static EdgeInsets horizontal800(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 56);

  /// Margin horizontal with 64px (stack-horizontal-900)
  static EdgeInsets horizontal900(SideHorizontalStack side) =>
      _horizontalStack(side: side, value: 64);

  /// Margin vertical with 8px (stack-vertical-100)
  static EdgeInsets vertical100(SideVerticalStack side) =>
      _verticalStack(side: side, value: 8);

  /// Margin vertical with 12px (stack-vertical-150)
  static EdgeInsets vertical150(SideVerticalStack side) =>
      _verticalStack(side: side, value: 12);

  /// Margin vertical with 16px (stack-vertical-200)
  static EdgeInsets vertical200(SideVerticalStack side) =>
      _verticalStack(side: side, value: 16);

  /// Margin vertical with 20px (stack-vertical-300)
  static EdgeInsets vertical300(SideVerticalStack side) =>
      _verticalStack(side: side, value: 20);

  /// Margin vertical with 24px (stack-vertical-400)
  static EdgeInsets vertical400(SideVerticalStack side) =>
      _verticalStack(side: side, value: 24);

  /// Margin vertical with 32px (stack-vertical-500)
  static EdgeInsets vertical500(SideVerticalStack side) =>
      _verticalStack(side: side, value: 32);

  /// Margin vertical with 40px (stack-vertical-600)
  static EdgeInsets vertical600(SideVerticalStack side) =>
      _verticalStack(side: side, value: 40);

  /// Margin vertical with 48px (stack-vertical-700)
  static EdgeInsets vertical700(SideVerticalStack side) =>
      _verticalStack(side: side, value: 48);

  /// Margin vertical with 56px (stack-vertical-800)
  static EdgeInsets vertical800(SideVerticalStack side) =>
      _verticalStack(side: side, value: 56);

  /// Margin vertical with 64px (stack-vertical-900)
  static EdgeInsets vertical900(SideVerticalStack side) =>
      _verticalStack(side: side, value: 64);

  static EdgeInsets _horizontalStack(
      {required SideHorizontalStack side, required double value}) {
    if (side == SideHorizontalStack.all) {
      return EdgeInsets.symmetric(horizontal: value);
    }
    return side == SideHorizontalStack.left
        ? EdgeInsets.only(left: value)
        : EdgeInsets.only(right: value);
  }

  static EdgeInsets _verticalStack(
      {required SideVerticalStack side, required double value}) {
    if (side == SideVerticalStack.all) {
      return EdgeInsets.symmetric(vertical: value);
    }
    return side == SideVerticalStack.bottom
        ? EdgeInsets.only(bottom: value)
        : EdgeInsets.only(top: value);
  }
}
