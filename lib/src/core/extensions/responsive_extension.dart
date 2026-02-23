import 'package:anime_universe/src/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class Responsive{
  Responsive._();
  // Current screen size
  static late Size _screen;

  // Default size of figma design
  static const Size figmaBase = Size(390, 884);

  static void init(BuildContext context){
    _screen = context.kSize;
  }

  // Scale factor
  static double get _wScale => _screen.width / figmaBase.width;
  static double get _hScale => _screen.height / figmaBase.height;

  // Responsive size
  static double w(double v) => v * _wScale;
  static double h(double v) => v * _hScale;
  static double sp(double v) => v * (_wScale < _hScale ? _wScale : _hScale);
}

extension ResponsiveNumExtenstion on num {
  // Responsive width
  double get w => Responsive.w(toDouble());

  // Responsive height
  double get h => Responsive.h(toDouble());

  // Responsive font size
  double get sp => Responsive.sp(toDouble());

  // Responsive radius
  double get r=> Responsive.sp(toDouble());
}
