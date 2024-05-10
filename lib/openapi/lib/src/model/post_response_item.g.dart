// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostResponseItem extends PostResponseItem {
  @override
  final ShowPosts post;
  @override
  final BuiltList<ShowPostImage> postImages;
  @override
  final UserRead user;
  @override
  final ShowLocation location;

  factory _$PostResponseItem(
          [void Function(PostResponseItemBuilder)? updates]) =>
      (new PostResponseItemBuilder()..update(updates))._build();

  _$PostResponseItem._(
      {required this.post,
      required this.postImages,
      required this.user,
      required this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(post, r'PostResponseItem', 'post');
    BuiltValueNullFieldError.checkNotNull(
        postImages, r'PostResponseItem', 'postImages');
    BuiltValueNullFieldError.checkNotNull(user, r'PostResponseItem', 'user');
    BuiltValueNullFieldError.checkNotNull(
        location, r'PostResponseItem', 'location');
  }

  @override
  PostResponseItem rebuild(void Function(PostResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostResponseItemBuilder toBuilder() =>
      new PostResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostResponseItem &&
        post == other.post &&
        postImages == other.postImages &&
        user == other.user &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, postImages.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostResponseItem')
          ..add('post', post)
          ..add('postImages', postImages)
          ..add('user', user)
          ..add('location', location))
        .toString();
  }
}

class PostResponseItemBuilder
    implements Builder<PostResponseItem, PostResponseItemBuilder> {
  _$PostResponseItem? _$v;

  ShowPostsBuilder? _post;
  ShowPostsBuilder get post => _$this._post ??= new ShowPostsBuilder();
  set post(ShowPostsBuilder? post) => _$this._post = post;

  ListBuilder<ShowPostImage>? _postImages;
  ListBuilder<ShowPostImage> get postImages =>
      _$this._postImages ??= new ListBuilder<ShowPostImage>();
  set postImages(ListBuilder<ShowPostImage>? postImages) =>
      _$this._postImages = postImages;

  UserReadBuilder? _user;
  UserReadBuilder get user => _$this._user ??= new UserReadBuilder();
  set user(UserReadBuilder? user) => _$this._user = user;

  ShowLocationBuilder? _location;
  ShowLocationBuilder get location =>
      _$this._location ??= new ShowLocationBuilder();
  set location(ShowLocationBuilder? location) => _$this._location = location;

  PostResponseItemBuilder() {
    PostResponseItem._defaults(this);
  }

  PostResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _post = $v.post.toBuilder();
      _postImages = $v.postImages.toBuilder();
      _user = $v.user.toBuilder();
      _location = $v.location.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostResponseItem;
  }

  @override
  void update(void Function(PostResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostResponseItem build() => _build();

  _$PostResponseItem _build() {
    _$PostResponseItem _$result;
    try {
      _$result = _$v ??
          new _$PostResponseItem._(
              post: post.build(),
              postImages: postImages.build(),
              user: user.build(),
              location: location.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        post.build();
        _$failedField = 'postImages';
        postImages.build();
        _$failedField = 'user';
        user.build();
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostResponseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
