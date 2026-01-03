// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/back.png
  AssetGenImage get back => const AssetGenImage('assets/images/back.png');

  /// File path: assets/images/bag.png
  AssetGenImage get bag => const AssetGenImage('assets/images/bag.png');

  /// File path: assets/images/bag1.png
  AssetGenImage get bag1 => const AssetGenImage('assets/images/bag1.png');

  /// File path: assets/images/btn-bag.png
  AssetGenImage get btnBag => const AssetGenImage('assets/images/btn-bag.png');

  /// File path: assets/images/cart-image.png
  AssetGenImage get cartImage =>
      const AssetGenImage('assets/images/cart-image.png');

  /// File path: assets/images/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/images/cart.png');

  /// File path: assets/images/detail.png
  AssetGenImage get detail => const AssetGenImage('assets/images/detail.png');

  /// File path: assets/images/forward.png
  AssetGenImage get forward => const AssetGenImage('assets/images/forward.png');

  /// File path: assets/images/hart-detail.png
  AssetGenImage get hartDetail =>
      const AssetGenImage('assets/images/hart-detail.png');

  /// File path: assets/images/hart.png
  AssetGenImage get hart => const AssetGenImage('assets/images/hart.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/images/menu.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/search.png
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');

  /// File path: assets/images/shoes.png
  AssetGenImage get shoes => const AssetGenImage('assets/images/shoes.png');

  /// File path: assets/images/sort.png
  AssetGenImage get sort => const AssetGenImage('assets/images/sort.png');

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/tick.png
  AssetGenImage get tick => const AssetGenImage('assets/images/tick.png');

  /// File path: assets/images/top-bag.png
  AssetGenImage get topBag => const AssetGenImage('assets/images/top-bag.png');

  /// File path: assets/images/user.jpg
  AssetGenImage get user => const AssetGenImage('assets/images/user.jpg');

  /// File path: assets/images/watch.png
  AssetGenImage get watch => const AssetGenImage('assets/images/watch.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    avatar,
    back,
    bag,
    bag1,
    btnBag,
    cartImage,
    cart,
    detail,
    forward,
    hartDetail,
    hart,
    home,
    menu,
    notification,
    profile,
    search,
    shoes,
    sort,
    star,
    tick,
    topBag,
    user,
    watch,
  ];
}

class Assets {
  const Assets._();

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
