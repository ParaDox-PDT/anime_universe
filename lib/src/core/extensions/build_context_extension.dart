import 'package:flutter/material.dart';

extension CustomBuildContext on BuildContext{
  /// MediaQuery size (width/height)
  Size get kSize => MediaQuery.of(this).size;

  /// width
  double get kWidth => MediaQuery.of(this).size.width;

  /// height
  double get kHeight => MediaQuery.of(this).size.height;
}