import 'dart:io';

import 'package:now_go_app/importer.dart';
import 'package:now_go_app/repository/image_repository.dart';

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
      } else if (user?.image?.path != null && user!.image!.path.isNotEmpty) {
        return Image.network(
          user!.image!.path,
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

  static void _clearTextEditingController(ProviderRef ref) {
    ref.read(accountNameController(null));
    ref.read(linkController(null));
    ref.read(profileController(null));
    ref.read(newImageProvider.notifier).state = null;
  }

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
          Files? images = null;
          if (newImage != null) {
            final imageResponse = await ref
                .read(fileRepositoryProvider)
                .uploadImage(images: [newImage]);

            if (imageResponse.isSuccess) {
              images = Files(
                (b) => b
                  ..uuid = imageResponse.data?.data?.first.uuid
                  ..name = imageResponse.data?.data?.first.name
                  ..path = imageResponse.data?.data?.first.path
                  ..isUsed = true,
              );
            } else {
              ref.read(errorMessageHandle)(
                  imageResponse.error ?? "画像のアップロードに失敗しました", context);
              return;
            }
          }

          final response = await ref.read(userRepositoryProvider).updateMe(
                accountName: accountName,
                link: link,
                profile: profile,
                image: images,
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
    Provider.autoDispose<MyPageEditProviders>((ref) => MyPageEditProviders());
