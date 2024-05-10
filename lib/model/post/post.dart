import 'package:now_go_app/importer.dart';

part 'post.freezed.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required ShowPosts post,
    @Default(null) List<ShowPostImage>? postImages,
    required UserRead user,
    required ShowLocation location,
  }) = _PostModel;
}
