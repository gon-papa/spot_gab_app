//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/authenticated_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_response_item.g.dart';

/// SignUpResponseItem
///
/// Properties:
/// * [user] - サインアップユーザー情報
@BuiltValue()
abstract class SignUpResponseItem implements Built<SignUpResponseItem, SignUpResponseItemBuilder> {
  /// サインアップユーザー情報
  @BuiltValueField(wireName: r'user')
  AuthenticatedUser? get user;

  SignUpResponseItem._();

  factory SignUpResponseItem([void updates(SignUpResponseItemBuilder b)]) = _$SignUpResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpResponseItem> get serializer => _$SignUpResponseItemSerializer();
}

class _$SignUpResponseItemSerializer implements PrimitiveSerializer<SignUpResponseItem> {
  @override
  final Iterable<Type> types = const [SignUpResponseItem, _$SignUpResponseItem];

  @override
  final String wireName = r'SignUpResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(AuthenticatedUser),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignUpResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignUpResponseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticatedUser),
          ) as AuthenticatedUser;
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
  SignUpResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpResponseItemBuilder();
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

