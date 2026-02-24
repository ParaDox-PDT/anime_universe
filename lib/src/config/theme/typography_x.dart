import 'package:anime_universe/src/core/extensions/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'app_typography.dart';

extension TypographyX on BuildContext {
  // --- Helper---
  TextStyle _t({
    required double size,
    required FontWeight weight,
    Color? colorOverride,
    double? height,
    double? letterSpacing,
    String? fontFamilyOverride,
  }) => AppTypography.style(
    this,
    size: size,
    weight: weight,
    color: colorOverride,
    height: height,
    letterSpacing: letterSpacing,
    fontFamily: fontFamilyOverride,
  );

  // 10
  TextStyle f10Regular({Color? colorOverride, double? height}) => _t(
    size: 10.sp,
    weight: FontWeight.w400,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f10Medium({Color? colorOverride, double? height}) => _t(
    size: 10.sp,
    weight: FontWeight.w500,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f10SemiBold({Color? colorOverride, double? height}) => _t(
    size: 10.sp,
    weight: FontWeight.w600,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f10Bold({Color? colorOverride, double? height}) => _t(
    size: 10.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 12
  TextStyle f12Regular({Color? colorOverride, double? height, double? letterSpacing}) => _t(
    size: 12.sp,
    weight: FontWeight.w400,
    colorOverride: colorOverride,
    height: height,
    letterSpacing: letterSpacing,
  );

  TextStyle f12Medium({Color? colorOverride, double? height}) => _t(
    size: 12.sp,
    weight: FontWeight.w500,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f12SemiBold({Color? colorOverride, double? height}) => _t(
    size: 12.sp,
    weight: FontWeight.w600,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f12Bold({Color? colorOverride, double? height}) => _t(
    size: 12.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 14
  TextStyle f14Regular({Color? colorOverride, double? height}) => _t(
    size: 14.sp,
    weight: FontWeight.w400,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f14Medium({Color? colorOverride, double? height}) => _t(
    size: 14.sp,
    weight: FontWeight.w500,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f14SemiBold({Color? colorOverride, double? height}) => _t(
    size: 14.sp,
    weight: FontWeight.w600,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f14Bold({Color? colorOverride, double? height}) => _t(
    size: 14.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 16
  TextStyle f16Regular({Color? colorOverride, double? height, double? letterSpacing}) => _t(
    size: 16.sp,
    weight: FontWeight.w400,
    colorOverride: colorOverride,
    height: height,
    letterSpacing: letterSpacing,
  );

  TextStyle f16Medium({Color? colorOverride, double? height}) => _t(
    size: 16.sp,
    weight: FontWeight.w500,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f16SemiBold({Color? colorOverride, double? height}) => _t(
    size: 16.sp,
    weight: FontWeight.w600,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f16Bold({Color? colorOverride, double? height}) => _t(
    size: 16.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 18
  TextStyle f18Regular({Color? colorOverride, double? height}) => _t(
    size: 18.sp,
    weight: FontWeight.w400,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f18SemiBold({Color? colorOverride, double? height}) => _t(
    size: 18.sp,
    weight: FontWeight.w600,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f18Bold({Color? colorOverride, double? height}) => _t(
    size: 18.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 20+
  TextStyle f20Bold({Color? colorOverride, double? height}) => _t(
    size: 20.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  TextStyle f24ExtraBold({Color? colorOverride, double? height}) => _t(
    size: 24,
    weight: FontWeight.w800,
    colorOverride: colorOverride,
    height: height,
  );

  // 32
  TextStyle f32Bold({Color? colorOverride, double? height}) => _t(
    size: 32.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 36
  TextStyle f36Bold({Color? colorOverride, double? height}) => _t(
    size: 36.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );

  // 48
  TextStyle f48Bold({Color? colorOverride, double? height}) => _t(
    size: 48.sp,
    weight: FontWeight.w700,
    colorOverride: colorOverride,
    height: height,
  );
}
