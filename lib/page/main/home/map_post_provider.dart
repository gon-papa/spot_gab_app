import 'package:now_go_app/importer.dart';
import 'package:now_go_app/model/post/post.dart';

part 'map_post_provider.g.dart';

@riverpod
class MapPostNotifier extends _$MapPostNotifier {
  @override
  Future<AsyncValue<List<PostModel>>> build() async {
    try {
      final postRepository = ref.read(postRepositoryProvider);
      final response = await postRepository.getPosts(
        geo_hash: '9q8',
        size: 20,
        page: 1,
      );

      if (response.isSuccess && response.data?.data != null) {
        final posts = response.data!.data!.map((element) {
          return PostModel(
            post: element.post,
            user: element.user,
            location: element.location,
            postImages: element.postImages?.toList(),
          );
        }).toList();
        return AsyncValue.data(posts);
      } else {
        return AsyncValue.data([]);
      }
    } catch (e, stackTrace) {
      return AsyncValue.error(e, stackTrace);
    }
  }
}
