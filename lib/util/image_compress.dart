import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:now_go_app/importer.dart';

final imageCompressProvider = Provider(
  (ref) => (
    XFile? image,
    Function(XFile?)? afterProcess,
  ) async {
    final compressedFile = await FlutterImageCompress.compressAndGetFile(
      image!.path,
      image.path.replaceFirst('.jpg', '_compressed.jpg'),
      quality: 50,
      minHeight: 800,
      minWidth: 800,
    );

    if (compressedFile != null && afterProcess != null) {
      afterProcess(compressedFile);
    }
  },
);
