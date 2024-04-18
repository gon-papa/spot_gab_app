import 'package:now_go_app/importer.dart';

class PostProviders {
  static final postController = ChangeNotifierProvider<TextEditingController>(
    (ref) => TextEditingController(),
  );

  static final focusNodeProvider = Provider.autoDispose<FocusNode>(
    (ref) => FocusNode(),
  );
}

final postProvider =
    Provider.autoDispose<PostProviders>((ref) => PostProviders());
