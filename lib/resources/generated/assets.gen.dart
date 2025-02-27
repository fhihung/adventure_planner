/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// Directory path: assets/icons/bold
  $AssetsIconsBoldGen get bold => const $AssetsIconsBoldGen();

  /// Directory path: assets/icons/linear
  $AssetsIconsLinearGen get linear => const $AssetsIconsLinearGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple-logo.png
  AssetGenImage get appleLogo => const AssetGenImage('assets/images/apple-logo.png');

  /// File path: assets/images/background.png
  AssetGenImage get background => const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/background2.png
  AssetGenImage get background2 => const AssetGenImage('assets/images/background2.png');

  /// File path: assets/images/google-icon.png
  AssetGenImage get googleIcon => const AssetGenImage('assets/images/google-icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [appleLogo, background, background2, googleIcon];
}

class $AssetsIconsBoldGen {
  const $AssetsIconsBoldGen();

  /// Directory path: assets/icons/bold/svg
  $AssetsIconsBoldSvgGen get svg => const $AssetsIconsBoldSvgGen();
}

class $AssetsIconsLinearGen {
  const $AssetsIconsLinearGen();

  /// Directory path: assets/icons/linear/svg
  $AssetsIconsLinearSvgGen get svg => const $AssetsIconsLinearSvgGen();
}

class $AssetsIconsBoldSvgGen {
  const $AssetsIconsBoldSvgGen();

  /// File path: assets/icons/bold/svg/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/bold/svg/edit.svg');

  /// File path: assets/icons/bold/svg/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/bold/svg/home.svg');

  /// File path: assets/icons/bold/svg/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/bold/svg/location.svg');

  /// File path: assets/icons/bold/svg/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/bold/svg/setting.svg');

  /// List of all assets
  List<SvgGenImage> get values => [edit, home, location, setting];
}

class $AssetsIconsLinearSvgGen {
  const $AssetsIconsLinearSvgGen();

  /// File path: assets/icons/linear/svg/archive-add.svg
  SvgGenImage get archiveAdd => const SvgGenImage('assets/icons/linear/svg/archive-add.svg');

  /// File path: assets/icons/linear/svg/arrow-right.svg
  SvgGenImage get arrowRight => const SvgGenImage('assets/icons/linear/svg/arrow-right.svg');

  /// File path: assets/icons/linear/svg/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/linear/svg/calendar.svg');

  /// File path: assets/icons/linear/svg/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/icons/linear/svg/clock.svg');

  /// File path: assets/icons/linear/svg/close-circle.svg
  SvgGenImage get closeCircle => const SvgGenImage('assets/icons/linear/svg/close-circle.svg');

  /// File path: assets/icons/linear/svg/coins.svg
  SvgGenImage get coins => const SvgGenImage('assets/icons/linear/svg/coins.svg');

  /// File path: assets/icons/linear/svg/dollar-square.svg
  SvgGenImage get dollarSquare => const SvgGenImage('assets/icons/linear/svg/dollar-square.svg');

  /// File path: assets/icons/linear/svg/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/linear/svg/edit.svg');

  /// File path: assets/icons/linear/svg/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/linear/svg/home.svg');

  /// File path: assets/icons/linear/svg/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/linear/svg/location.svg');

  /// File path: assets/icons/linear/svg/people.svg
  SvgGenImage get people => const SvgGenImage('assets/icons/linear/svg/people.svg');

  /// File path: assets/icons/linear/svg/receipt-item.svg
  SvgGenImage get receiptItem => const SvgGenImage('assets/icons/linear/svg/receipt-item.svg');

  /// File path: assets/icons/linear/svg/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/linear/svg/setting.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [archiveAdd, arrowRight, calendar, clock, closeCircle, coins, dollarSquare, edit, home, location, people, receiptItem, setting];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

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
