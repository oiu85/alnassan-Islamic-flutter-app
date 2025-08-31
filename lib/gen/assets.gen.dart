// dart format width=120

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

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background_candles_zh.png
  AssetGenImage get backgroundCandlesZh => const AssetGenImage('assets/images/background_candles_zh.png');

  /// File path: assets/images/background_zh.png
  AssetGenImage get backgroundZh => const AssetGenImage('assets/images/background_zh.png');

  /// File path: assets/images/candleBig.png
  AssetGenImage get candleBig => const AssetGenImage('assets/images/candleBig.png');

  /// File path: assets/images/candleSmall.png
  AssetGenImage get candleSmall => const AssetGenImage('assets/images/candleSmall.png');

  /// File path: assets/images/circuler_zh.png
  AssetGenImage get circulerZh => const AssetGenImage('assets/images/circuler_zh.png');

  /// File path: assets/images/headphone.png
  AssetGenImage get headphone => const AssetGenImage('assets/images/headphone.png');

  /// File path: assets/images/helal.png
  AssetGenImage get helal => const AssetGenImage('assets/images/helal.png');

  /// File path: assets/images/mohhamed.png
  AssetGenImage get mohhamed => const AssetGenImage('assets/images/mohhamed.png');

  /// File path: assets/images/mousqe.png
  AssetGenImage get mousqe => const AssetGenImage('assets/images/mousqe.png');

  /// File path: assets/images/nassanName.png
  AssetGenImage get nassanName => const AssetGenImage('assets/images/nassanName.png');

  /// File path: assets/images/qurane.png
  AssetGenImage get qurane => const AssetGenImage('assets/images/qurane.png');

  /// File path: assets/images/splash-screeen.png
  AssetGenImage get splashScreeen => const AssetGenImage('assets/images/splash-screeen.png');

  /// File path: assets/images/tablet.png
  AssetGenImage get tablet => const AssetGenImage('assets/images/tablet.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    backgroundCandlesZh,
    backgroundZh,
    candleBig,
    candleSmall,
    circulerZh,
    headphone,
    helal,
    mohhamed,
    mousqe,
    nassanName,
    qurane,
    splashScreeen,
    tablet,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/CandleSmall.svg
  SvgGenImage get candleSmall => const SvgGenImage('assets/svg/CandleSmall.svg');

  /// File path: assets/svg/background_Candles_zh.svg
  SvgGenImage get backgroundCandlesZh => const SvgGenImage('assets/svg/background_Candles_zh.svg');

  /// File path: assets/svg/background_zh.svg
  SvgGenImage get backgroundZh => const SvgGenImage('assets/svg/background_zh.svg');

  /// File path: assets/svg/candleBig.svg
  SvgGenImage get candleBig => const SvgGenImage('assets/svg/candleBig.svg');

  /// File path: assets/svg/ceirculer_zh.svg
  SvgGenImage get ceirculerZh => const SvgGenImage('assets/svg/ceirculer_zh.svg');

  /// File path: assets/svg/headphone.svg
  SvgGenImage get headphone => const SvgGenImage('assets/svg/headphone.svg');

  /// File path: assets/svg/helal.svg
  SvgGenImage get helal => const SvgGenImage('assets/svg/helal.svg');

  /// File path: assets/svg/mohammed.svg
  SvgGenImage get mohammed => const SvgGenImage('assets/svg/mohammed.svg');

  /// File path: assets/svg/musqe.svg
  SvgGenImage get musqe => const SvgGenImage('assets/svg/musqe.svg');

  /// File path: assets/svg/nassanName.svg
  SvgGenImage get nassanName => const SvgGenImage('assets/svg/nassanName.svg');

  /// File path: assets/svg/quran.svg
  SvgGenImage get quran => const SvgGenImage('assets/svg/quran.svg');

  /// File path: assets/svg/tablet.svg
  SvgGenImage get tablet => const SvgGenImage('assets/svg/tablet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    candleSmall,
    backgroundCandlesZh,
    backgroundZh,
    candleBig,
    ceirculerZh,
    headphone,
    helal,
    mohammed,
    musqe,
    nassanName,
    quran,
    tablet,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}, this.animation});

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
  const AssetGenImageAnimation({required this.isAnimation, required this.duration, required this.frames});

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

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
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
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
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
