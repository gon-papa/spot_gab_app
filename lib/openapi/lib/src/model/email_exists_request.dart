//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_exists_request.g.dart';

/// EmailExistsRequest
///
/// Properties:
/// * [email] - メールアドレス
@BuiltValue()
abstract class EmailExistsRequest implements Built<EmailExistsRequest, EmailExistsRequestBuilder> {
  /// メールアドレス
  @BuiltValueField(wireName: r'email')
  String get email;

  EmailExistsRequest._();

  factory EmailExistsRequest([void updates(EmailExistsRequestBuilder b)]) = _$EmailExistsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailExistsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailExistsRequest> get serializer => _$EmailExistsRequestSerializer();
}

class _$EmailExistsRequestSerializer implements PrimitiveSerializer<EmailExistsRequest> {
  @override
  final Iterable<Type> types = const [EmailExistsRequest, _$EmailExistsRequest];

  @override
  final String wireName = r'EmailExistsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailExistsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmailExistsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmailExistsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmailExistsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailExistsRequestBuilder();
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

