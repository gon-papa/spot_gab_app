import 'dart:io';
import 'package:now_go_app/importer.dart';
import 'package:now_go_app/repository/post_repository.dart';
import 'package:now_go_app/util/snack_bar.dart';

class PostProviders {
  static final formKeyProvider = Provider.autoDispose<GlobalKey<FormState>>(
    (ref) => GlobalKey<FormState>(),
  );

  static final postController =
      ChangeNotifierProvider<DetectableTextEditingController>(
    (ref) => DetectableTextEditingController(regExp: hashTagAtSignUrlRegExp),
  );

  static final hashTagProvider =
      StateProvider.autoDispose.family<List<String>, RegExp>(
    (ref, regExp) {
      final text = ref.watch(postController).text;
      return regExp.allMatches(text).map((e) => e.group(0)!).toList();
    },
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

  static final postSubmitProvider = Provider.autoDispose((ref) => ({
        required BuildContext context,
        required String post,
        required List<File> images,
        required LatLng postPosition,
        required List<Placemark> places,
        required String geoHash,
        required List<String> hashTags,
      }) async {
        try {
          // imageが空でなければをアップロード
          List<String> savedImages = [];
          if (images.isNotEmpty) {
            final imageResponse = await ref
                .read(fileRepositoryProvider)
                .uploadImage(images: images);

            if (imageResponse.isSuccess) {
              imageResponse.data?.data?.forEach((element) {
                if (element.path != null) {
                  savedImages.add(element.path!);
                }
              });
            } else {
              ref.read(errorMessageHandle)(
                  imageResponse.error ?? "画像のアップロードに失敗しました", context);
              return;
            }
          }

          // postをアップロード
          final postResponse = await ref.read(postRepositoryProvider).post(
                post: post,
                images: savedImages,
                postPosition: postPosition,
                places: places,
                geoHash: geoHash,
                hashTags: hashTags,
              );
          if (postResponse.isSuccess) {
            ref.read(cleanPostProvider)();
            HomeRoute().go(context);
            UpperSnackBar().showSnackBar(
              context: context,
              message: '投稿しました',
            );
          } else {
            ref.read(errorMessageHandle)(
                postResponse.error ?? "投稿に失敗しました", context);
          }
        } on Exception catch (error) {
          ref.read(errorMessageHandle)(error.toString(), context);
        }
      });

  static final cleanPostProvider = Provider.autoDispose((ref) => () {
        ref.read(postController).clear();
        ref.read(newImageProvider.notifier).state = [];
        ref.read(postPositionProvider.notifier).state = LatLng(0, 0);
        ref.read(hashTagProvider(hashTagAtSignUrlRegExp).notifier).state = [];
      });
}

final postProvider =
    Provider.autoDispose<PostProviders>((ref) => PostProviders());
