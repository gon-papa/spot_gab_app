import 'dart:ui' as ui;

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:now_go_app/importer.dart';

class ConvertPostImage {
  final String? imagePath;

  ConvertPostImage({
    required this.imagePath,
  });

  Future<BitmapDescriptor> createMarkerImage() async {
    final baseByteData = await rootBundle.load(Assets.images.postIcon.path);
    final baseImage = await loadImageFromAssets(baseByteData);
    final ui.Image userImage;

    if (imagePath == null) {
      final byteData =
          await rootBundle.load(Assets.images.defaultUserIcon.path);
      userImage = await loadImageFromAssets(byteData);
    } else {
      final netWorkFile = await DefaultCacheManager().getSingleFile(imagePath!);
      final imageData = await netWorkFile.readAsBytes();
      userImage = await loadImageFromAssets(ByteData.view(imageData.buffer));
    }

    final double networkImageWidth = 160.0;
    final double networkImageHeight = 160.0;
    final double baseImageWidth = 200;
    final double baseImageHeight = 250;

    // リサイズされたユーザー画像を作成
    final resizedUserImage =
        await resizeImage(userImage, networkImageWidth, networkImageHeight);

    // リサイズされたベース画像を作成
    final resizedBaseImage =
        await resizeImage(baseImage, baseImageWidth, baseImageHeight);

    // 画像を合成する
    ui.PictureRecorder recorder = ui.PictureRecorder();
    ui.Canvas canvas = ui.Canvas(recorder);
    ui.Size size = ui.Size(baseImageWidth, baseImageHeight);

    // ネットワーク画像を描画
    paintImage(
      canvas: canvas,
      rect: ui.Rect.fromLTWH(0, 0, size.width, size.height),
      image: resizedBaseImage,
      colorFilter: ui.ColorFilter.mode(
        const Color(0xFF9370DB),
        ui.BlendMode.srcIn,
      ),
    );

    // ネットワーク画像を丸型に切り抜いて描画
    final double offsetX = 20.0; // 任意のX座標オフセット
    final double offsetY = 20.0; // 任意のY座標オフセット
    final Path clipPath = Path()
      ..addOval(ui.Rect.fromLTWH(
          offsetX, offsetY, networkImageWidth, networkImageHeight));
    canvas.clipPath(clipPath);
    // アセット画像をオーバーレイとして描画
    paintImage(
      canvas: canvas,
      rect: ui.Rect.fromLTWH(
          offsetX, offsetY, networkImageWidth, networkImageHeight),
      image: resizedUserImage,
      fit: BoxFit.cover,
    );

    // 合成された画像を生成
    var picture = recorder.endRecording();
    var img = await picture.toImage(size.width.toInt(), size.height.toInt());
    var byteData = await img.toByteData(format: ui.ImageByteFormat.png);
    var bytes = byteData!.buffer.asUint8List();

    return BitmapDescriptor.fromBytes(bytes);
  }

  // Imageからui.Imageへ変換
  Future<ui.Image> loadImageFromAssets(ByteData byteData) async {
    final list = byteData.buffer.asUint8List();
    final codec = await ui.instantiateImageCodec(list);
    final frame = await codec.getNextFrame();
    return frame.image;
  }

  // 画像をリサイズする関数
  Future<ui.Image> resizeImage(
      ui.Image image, double width, double height) async {
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    final paint = ui.Paint();
    final Size size = Size(width, height);
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );
    final picture = recorder.endRecording();
    final img = await picture.toImage(width.toInt(), height.toInt());
    return img;
  }
}
