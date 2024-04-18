//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_account_exists_response_item.g.dart';

/// IdAccountExistsResponseItem
///
/// Properties:
/// * [exists] - 存在確認結果
@BuiltValue()
abstract class IdAccountExistsResponseItem implements Built<IdAccountExistsResponseItem, IdAccountExistsResponseItemBuilder> {
  /// 存在確認結果
  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  IdAccountExistsResponseItem._();

  factory IdAccountExistsResponseItem([void updates(IdAccountExistsResponseItemBuilder b)]) = _$IdAccountExistsResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdAccountExistsResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdAccountExistsResponseItem> get serializer => _$IdAccountExistsResponseItemSerializer();
}

class _$IdAccountExistsResponseItemSerializer implements PrimitiveSerializer<IdAccountExistsResponseItem> {
  @override
  final Iterable<Type> types = const [IdAccountExistsResponseItem, _$IdAccountExistsResponseItem];

  @override
  final String wireName = r'IdAccountExistsResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdAccountExistsResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exists != null) {
      yield r'exists';
      yield serializers.serialize(
        object.exists,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdAccountExistsResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdAccountExistsResponseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exists = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdAccountExistsResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdAccountExistsResponseItemBuilder();
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

