//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user_read.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/show_location.dart';
import 'package:openapi/src/model/show_post_image.dart';
import 'package:openapi/src/model/show_posts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_response_item.g.dart';

/// PostResponseItem
///
/// Properties:
/// * [post] - 投稿情報
/// * [postImages] - 画像情報
/// * [user] - ユーザー情報
/// * [location] - 位置情報
@BuiltValue()
abstract class PostResponseItem implements Built<PostResponseItem, PostResponseItemBuilder> {
  /// 投稿情報
  @BuiltValueField(wireName: r'post')
  ShowPosts get post;

  /// 画像情報
  @BuiltValueField(wireName: r'postImages')
  BuiltList<ShowPostImage>? get postImages;

  /// ユーザー情報
  @BuiltValueField(wireName: r'user')
  UserRead get user;

  /// 位置情報
  @BuiltValueField(wireName: r'location')
  ShowLocation get location;

  PostResponseItem._();

  factory PostResponseItem([void updates(PostResponseItemBuilder b)]) = _$PostResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostResponseItemBuilder b) => b
      ..postImages = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<PostResponseItem> get serializer => _$PostResponseItemSerializer();
}

class _$PostResponseItemSerializer implements PrimitiveSerializer<PostResponseItem> {
  @override
  final Iterable<Type> types = const [PostResponseItem, _$PostResponseItem];

  @override
  final String wireName = r'PostResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'post';
    yield serializers.serialize(
      object.post,
      specifiedType: const FullType(ShowPosts),
    );
    if (object.postImages != null) {
      yield r'postImages';
      yield serializers.serialize(
        object.postImages,
        specifiedType: const FullType(BuiltList, [FullType(ShowPostImage)]),
      );
    }
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(UserRead),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(ShowLocation),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostResponseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'post':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShowPosts),
          ) as ShowPosts;
          result.post.replace(valueDes);
          break;
        case r'postImages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ShowPostImage)]),
          ) as BuiltList<ShowPostImage>;
          result.postImages.replace(valueDes);
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserRead),
          ) as UserRead;
          result.user.replace(valueDes);
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShowLocation),
          ) as ShowLocation;
          result.location.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostResponseItemBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

