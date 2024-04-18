//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_exists_response_item.g.dart';

/// EmailExistsResponseItem
///
/// Properties:
/// * [exists] - 存在確認結果
@BuiltValue()
abstract class EmailExistsResponseItem implements Built<EmailExistsResponseItem, EmailExistsResponseItemBuilder> {
  /// 存在確認結果
  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  EmailExistsResponseItem._();

  factory EmailExistsResponseItem([void updates(EmailExistsResponseItemBuilder b)]) = _$EmailExistsResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailExistsResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailExistsResponseItem> get serializer => _$EmailExistsResponseItemSerializer();
}

class _$EmailExistsResponseItemSerializer implements PrimitiveSerializer<EmailExistsResponseItem> {
  @override
  final Iterable<Type> types = const [EmailExistsResponseItem, _$EmailExistsResponseItem];

  @override
  final String wireName = r'EmailExistsResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailExistsResponseItem object, {
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
    EmailExistsResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmailExistsResponseItemBuilder result,
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
  EmailExistsResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailExistsResponseItemBuilder();
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

