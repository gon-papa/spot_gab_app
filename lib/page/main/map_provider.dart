import 'dart:math';

import 'package:now_go_app/importer.dart';
import 'package:now_go_app/model/post/post.dart';

// 地図関連Provider
class MapProviders {
  // 現在地取得
  static final getMyPositionProvider = Provider(
    (ref) => ({
      required BuildContext context,
    }) async {
      try {
        final locationRepository = ref.read(locationRepositoryProvider);
        final response = await locationRepository.getCurrentLocation();
        ref.read(myLatLngProvider.notifier).state = LatLng(
          response.latitude,
          response.longitude,
        );
        return response;
      } catch (e) {
        ref.read(errorMessageHandle)(e.toString(), context);
      }
    },
  );

  // 現在地緯度経度
  static final myLatLngProvider = StateProvider<LatLng>((ref) {
    return LatLng(0, 0);
  });

  // 投稿を取得
  static final getPostsProvider = Provider(
    (ref) => ({
      required BuildContext context,
    }) async {
      try {
        final postRepository = ref.read(postRepositoryProvider);
        final response = await postRepository.getPosts(
          geo_hash: '9q8',
          size: 20,
          page: 1,
        );
        print(response.data?.data);
        if (response.isSuccess) {
          // PostModelに変換
          response.data?.data?.forEach((element) {
            ref.read(postsProvider.notifier).state.add(
                  PostModel(
                    post: element.post,
                    user: element.user,
                    location: element.location,
                    postImages: element.postImages?.toList(),
                  ),
                );
          });
        }

        return response;
      } catch (e) {
        ref.read(errorMessageHandle)(e.toString(), context);
      }
    },
  );

  static final postsProvider = StateProvider<List<PostModel>>((ref) {
    return [];
  });

  static final widgetMarkerListProvider = Provider(
    (ref) => ({
      required BuildContext context,
    }) {
      final postList = ref.watch(postsProvider);
      final widgetMarkerList = <WidgetMarker>[];
      postList.forEach((element) {
        final imagePath = element.user.file!.anyOf.values[0] as Files?;
        widgetMarkerList.add(
          WidgetMarker(
            markerId: element.post.uuid,
            position: LatLng(
              double.parse(element.location.lat),
              double.parse(element.location.lng),
            ),
            widget: UserMarker(
              imagePath: imagePath?.path,
              onTap: () {},
              // ランダムな色
              color: Colors
                  .primaries[Random().nextInt(Colors.primaries.length - 1)],
            ),
          ),
        );
      });
      return widgetMarkerList;
    },
  );
}

final mapProvisers = Provider<MapProviders>((ref) => MapProviders());
