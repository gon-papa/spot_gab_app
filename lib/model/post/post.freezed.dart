// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostModel {
  ShowPosts get post => throw _privateConstructorUsedError;
  List<ShowPostImage>? get postImages => throw _privateConstructorUsedError;
  UserRead get user => throw _privateConstructorUsedError;
  ShowLocation get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {ShowPosts post,
      List<ShowPostImage>? postImages,
      UserRead user,
      ShowLocation location});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? postImages = freezed,
    Object? user = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as ShowPosts,
      postImages: freezed == postImages
          ? _value.postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<ShowPostImage>?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRead,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ShowLocation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShowPosts post,
      List<ShowPostImage>? postImages,
      UserRead user,
      ShowLocation location});
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? postImages = freezed,
    Object? user = null,
    Object? location = null,
  }) {
    return _then(_$PostModelImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as ShowPosts,
      postImages: freezed == postImages
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<ShowPostImage>?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRead,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ShowLocation,
    ));
  }
}

/// @nodoc

class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(
      {required this.post,
      final List<ShowPostImage>? postImages = null,
      required this.user,
      required this.location})
      : _postImages = postImages;

  @override
  final ShowPosts post;
  final List<ShowPostImage>? _postImages;
  @override
  @JsonKey()
  List<ShowPostImage>? get postImages {
    final value = _postImages;
    if (value == null) return null;
    if (_postImages is EqualUnmodifiableListView) return _postImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserRead user;
  @override
  final ShowLocation location;

  @override
  String toString() {
    return 'PostModel(post: $post, postImages: $postImages, user: $user, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.post, post) || other.post == post) &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post,
      const DeepCollectionEquality().hash(_postImages), user, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final ShowPosts post,
      final List<ShowPostImage>? postImages,
      required final UserRead user,
      required final ShowLocation location}) = _$PostModelImpl;

  @override
  ShowPosts get post;
  @override
  List<ShowPostImage>? get postImages;
  @override
  UserRead get user;
  @override
  ShowLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
