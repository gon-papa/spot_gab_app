//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/me.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me_response_item.g.dart';

/// MeResponseItem
///
/// Properties:
/// * [user] - ユーザー情報
@BuiltValue()
abstract class MeResponseItem implements Built<MeResponseItem, MeResponseItemBuilder> {
  /// ユーザー情報
  @BuiltValueField(wireName: r'user')
  Me? get user;

  MeResponseItem._();

  factory MeResponseItem([void updates(MeResponseItemBuilder b)]) = _$MeResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeResponseItem> get serializer => _$MeResponseItemSerializer();
}

class _$MeResponseItemSerializer implements PrimitiveSerializer<MeResponseItem> {
  @override
  final Iterable<Type> types = const [MeResponseItem, _$MeResponseItem];

  @override
  final String wireName = r'MeResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(Me),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MeResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MeResponseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Me),
          ) as Me;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeResponseItemBuilder();
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

