// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_next_bold.svg
  SvgGenImage get arrowNextBold =>
      const SvgGenImage('assets/icons/arrow_next_bold.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/cinematic.svg
  SvgGenImage get cinematic => const SvgGenImage('assets/icons/cinematic.svg');

  /// File path: assets/icons/done_underline.svg
  SvgGenImage get doneUnderline =>
      const SvgGenImage('assets/icons/done_underline.svg');

  /// File path: assets/icons/green_circle_done.svg
  SvgGenImage get greenCircleDone =>
      const SvgGenImage('assets/icons/green_circle_done.svg');

  /// File path: assets/icons/sparkle_icon.svg
  SvgGenImage get sparkleIcon =>
      const SvgGenImage('assets/icons/sparkle_icon.svg');

  /// File path: assets/icons/yellow_start.svg
  SvgGenImage get yellowStart =>
      const SvgGenImage('assets/icons/yellow_start.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
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

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
