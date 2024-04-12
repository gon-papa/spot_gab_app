/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bookmark_icon.svg
  SvgGenImage get bookmarkIcon =>
      const SvgGenImage('assets/icons/bookmark_icon.svg');

  /// File path: assets/icons/comment_icon.svg
  SvgGenImage get commentIcon =>
      const SvgGenImage('assets/icons/comment_icon.svg');

  /// File path: assets/icons/heart_icon.svg
  SvgGenImage get heartIcon => const SvgGenImage('assets/icons/heart_icon.svg');

  /// File path: assets/icons/link_icon.svg
  SvgGenImage get linkIcon => const SvgGenImage('assets/icons/link_icon.svg');

  /// File path: assets/icons/share_icon.svg
  SvgGenImage get shareIcon => const SvgGenImage('assets/icons/share_icon.svg');

  /// File path: assets/icons/user_marker.svg
  SvgGenImage get userMarker =>
      const SvgGenImage('assets/icons/user_marker.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [bookmarkIcon, commentIcon, heartIcon, linkIcon, shareIcon, userMarker];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/default_user_header.png
  AssetGenImage get defaultUserHeader =>
      const AssetGenImage('assets/images/default_user_header.png');

  /// File path: assets/images/default_user_icon.png
  AssetGenImage get defaultUserIcon =>
      const AssetGenImage('assets/images/default_user_icon.png');

  /// File path: assets/images/setting_icon.png
  AssetGenImage get settingIcon =>
      const AssetGenImage('assets/images/setting_icon.png');

  /// File path: assets/images/spot_gab_icon.png
  AssetGenImage get spotGabIcon =>
      const AssetGenImage('assets/images/spot_gab_icon.png');

  /// File path: assets/images/spot_gab_icon_only.png
  AssetGenImage get spotGabIconOnly =>
      const AssetGenImage('assets/images/spot_gab_icon_only.png');

  /// File path: assets/images/spot_gab_splash_icon.png
  AssetGenImage get spotGabSplashIcon =>
      const AssetGenImage('assets/images/spot_gab_splash_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        defaultUserHeader,
        defaultUserIcon,
        settingIcon,
        spotGabIcon,
        spotGabIconOnly,
        spotGabSplashIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
