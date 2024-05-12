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

    // 画像を合成する
    ui.PictureRecorder recorder = ui.PictureRecorder();
    ui.Canvas canvas = ui.Canvas(recorder);
    ui.Size size =
        ui.Size(userImage.width.toDouble(), userImage.height.toDouble());

    // ネットワーク画像を描画
    paintImage(
        canvas: canvas,
        rect: ui.Rect.fromLTWH(0, 0, size.width, size.height),
        image: userImage);
    // アセット画像をオーバーレイとして描画
    paintImage(
        canvas: canvas,
        rect: ui.Rect.fromLTWH(0, 0, size.width, size.height),
        image: baseImage);

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
}
