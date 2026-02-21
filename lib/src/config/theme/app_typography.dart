import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static TextStyle base(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.bodyMedium ?? const TextStyle();
  }

  static TextStyle style(
    BuildContext context, {
    required double size,
    required FontWeight weight,
    double? height,
    double? letterSpacing,
    Color? color,
    String? fontFamily = 'SplineSans',
  }) {
    final b = base(context);
    return b.copyWith(
      fontSize: size,
      fontWeight: weight,
      height: height,
      letterSpacing: letterSpacing,
      color: color ?? b.color,
      fontFamily: fontFamily ?? b.fontFamily,
    );
  }
}

