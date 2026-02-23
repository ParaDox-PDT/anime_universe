import 'package:flutter/material.dart';

extension CustomWidgetExtension on Widget {
  /// Padding
  Padding padding({required EdgeInsets padding}) => Padding(padding: padding,child: this,);

  /// ClipRRect
  ClipRRect clipRRect({required BorderRadius borderRadius}) =>
      ClipRRect(borderRadius: borderRadius);

  /// ClipOval
  ClipOval clipOval() => const ClipOval();
}
