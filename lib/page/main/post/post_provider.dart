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

  static final newImageProvider = StateProvider.autoDispose<List<File>>(
    (ref) => <File>[],
  );

  // image_picker選択後のずれ込み防止監視更新用Provider
  static final sizedBoxOnProviser = StateProvider.autoDispose((ref) => 0);

  static final googleMapControllerProvider =
      StateProvider<GoogleMapController?>((ref) => null);

  static final postPositionProvider =
      StateProvider.autoDispose<LatLng>((ref) => LatLng(0, 0));
}

final postProvider =
    Provider.autoDispose<PostProviders>((ref) => PostProviders());
