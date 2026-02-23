// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_next_bold.svg
  String get arrowNextBold => 'assets/icons/arrow_next_bold.svg';

  /// File path: assets/icons/calendar.svg
  String get calendar => 'assets/icons/calendar.svg';

  /// File path: assets/icons/cinematic.svg
  String get cinematic => 'assets/icons/cinematic.svg';

  /// File path: assets/icons/done_underline.svg
  String get doneUnderline => 'assets/icons/done_underline.svg';

  /// File path: assets/icons/green_circle_done.svg
  String get greenCircleDone => 'assets/icons/green_circle_done.svg';

  /// File path: assets/icons/sparkle_icon.svg
  String get sparkleIcon => 'assets/icons/sparkle_icon.svg';

  /// File path: assets/icons/yellow_start.svg
  String get yellowStart => 'assets/icons/yellow_start.svg';

  /// List of all assets
  List<String> get values => [
    arrowNextBold,
    calendar,
    cinematic,
    doneUnderline,
    greenCircleDone,
    sparkleIcon,
    yellowStart,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/on_boarding_background_first.png
  AssetGenImage get onBoardingBackgroundFirst =>
      const AssetGenImage('assets/images/on_boarding_background_first.png');

  /// File path: assets/images/on_boarding_background_second.png
  AssetGenImage get onBoardingBackgroundSecond =>
      const AssetGenImage('assets/images/on_boarding_background_second.png');

  /// File path: assets/images/on_boarding_background_third.png
  AssetGenImage get onBoardingBackgroundThird =>
      const AssetGenImage('assets/images/on_boarding_background_third.png');

  /// File path: assets/images/splash_icon.png
  AssetGenImage get splashIcon =>
      const AssetGenImage('assets/images/splash_icon.png');

  /// File path: assets/images/splash_page_background.png
  AssetGenImage get splashPageBackground =>
      const AssetGenImage('assets/images/splash_page_background.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    onBoardingBackgroundFirst,
    onBoardingBackgroundSecond,
    onBoardingBackgroundThird,
    splashIcon,
    splashPageBackground,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
