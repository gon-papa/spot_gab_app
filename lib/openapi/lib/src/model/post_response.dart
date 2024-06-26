//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/post_response_item.dart';
import 'package:openapi/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_response.g.dart';

/// PostResponse
///
/// Properties:
/// * [status] - ステータスコード
/// * [data] - 投稿情報リスト
/// * [message] 
@BuiltValue()
abstract class PostResponse implements Built<PostResponse, PostResponseBuilder> {
  /// ステータスコード
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// 投稿情報リスト
  @BuiltValueField(wireName: r'data')
  BuiltList<PostResponseItem>? get data;

  @BuiltValueField(wireName: r'message')
  Message? get message;

  PostResponse._();

  factory PostResponse([void updates(PostResponseBuilder b)]) = _$PostResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostResponseBuilder b) => b
      ..status = 200;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostResponse> get serializer => _$PostResponseSerializer();
}

class _$PostResponseSerializer implements PrimitiveSerializer<PostResponse> {
  @override
  final Iterable<Type> types = const [PostResponse, _$PostResponse];

  @override
  final String wireName = r'PostResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(PostResponseItem)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(Message),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostResponseItem)]),
          ) as BuiltList<PostResponseItem>;
          result.data.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Message),
          ) as Message;
          result.message.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostResponseBuilder();
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

