import 'dart:io';

import 'package:now_go_app/importer.dart';

class PostProviders {
  static final formKeyProvider = Provider.autoDispose<GlobalKey<FormState>>(
    (ref) => GlobalKey<FormState>(),
  );

  static final postController = ChangeNotifierProvider<TextEditingController>(
    (ref) => TextEditingController(),
  );

  static final focusNodeProvider = Provider.autoDispose<FocusNode>(
    (ref) => FocusNode(),
  );

  static final postLocationSelectProvider = StateProvider<LocationPostOption>(
    (ref) => LocationPostOption.currentLocation,
  );

  static final newImageProvider = StateProvider.autoDispose<List<File>>(
    (ref) => <File>[],
  );

  // image_picker選択後のずれ込み防止監視更新用Provider
  static final sizedBoxOnProviser = StateProvider.autoDispose((ref) => 0);
}

final postProvider =
    Provider.autoDispose<PostProviders>((ref) => PostProviders());

enum LocationPostOption { currentLocation, otherLocation }

extension LocationPostOptionExtension on LocationPostOption {
  String get displayName {
    switch (this) {
      case LocationPostOption.currentLocation:
        return '現在地で投稿';
      case LocationPostOption.otherLocation:
        return '場所を選択';
      default:
        return '';
    }
  }
}
