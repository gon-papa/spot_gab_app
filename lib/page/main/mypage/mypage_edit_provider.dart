import 'dart:io';

import 'package:now_go_app/importer.dart';

class MyPageEditProviders {
  // プレビュー画像を保持するProvider(新しい画像>ユーザー画像>デフォルト画像の順で表示)
  static final previewImageProvider = StateProvider.autoDispose<Image>(
    (ref) {
      final user = ref.watch(userNotifierProvider);
      final newImage = ref.watch(newImageProvider);
      if (newImage != null) {
        return Image.file(
          File(newImage.path),
          fit: BoxFit.cover,
        );
      } else if (user?.imagePath != null && user!.imagePath!.isNotEmpty) {
        return Image.network(
          user!.imagePath!,
          fit: BoxFit.cover,
        );
      } else {
        return Assets.images.defaultUserIcon.image();
      }
    },
  );

  static final myPageEditGlobalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );

  // 新しい画像を保持するProvider
  static final newImageProvider =
      StateProvider.autoDispose<File?>((ref) => null);

  static final accountNameController =
      ChangeNotifierProvider.family<TextEditingController, String?>(
    (ref, accountName) => TextEditingController(text: accountName),
  );

  static final linkController =
      ChangeNotifierProvider.family<TextEditingController, String?>(
    (ref, link) => TextEditingController(text: link),
  );

  static final profileController =
      ChangeNotifierProvider.family<TextEditingController, String?>(
    (ref, profile) => TextEditingController(text: profile),
  );

  static final myPageEditSubmitProvider = Provider(
    (ref) => ({
      required BuildContext context,
      required String? accountName,
      required String? link,
      required String? profile,
      required File? newImage,
    }) async {
      try {
        final formState = ref.read(myPageEditGlobalKeyProvider).currentState;
        if (formState != null && formState.validate()) {
          final response = await ref.read(userRepositoryProvider).updateMe(
                accountName: accountName,
                link: link,
                profile: profile,
                image: newImage,
              );

          if (response.isSuccess) {
            MyPageRoute().go(context);
          } else {
            ref.read(errorMessageHandle)(response.error, context);
          }
        }
      } on Exception catch (error) {
        ref.read(errorMessageHandle)(error.toString(), context);
      }
    },
  );
}

final myPageEditProvider =
    Provider<MyPageEditProviders>((ref) => MyPageEditProviders());
