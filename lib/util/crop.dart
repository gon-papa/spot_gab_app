import 'dart:io';

import 'package:spot_gab_app/importer.dart';

final imageCropProvider = Provider(
  (ref) => (
    BuildContext context,
    XFile? image,
    Function(File?)? afterProcess,
  ) async {
    final croppedFile = await ImageCropper().cropImage(
        sourcePath: image!.path,
        cropStyle: CropStyle.circle,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        iosUiSettings: iosSettings,
        androidUiSettings: androidSettings);

    if (croppedFile != null && afterProcess != null) {
      afterProcess(croppedFile);
    }
  },
);

final androidSettings = AndroidUiSettings(
  toolbarTitle: '',
  initAspectRatio: CropAspectRatioPreset.square,
  lockAspectRatio: true,
);

final iosSettings = IOSUiSettings(
  title: '',
  aspectRatioLockEnabled: true,
  resetAspectRatioEnabled: false,
);
