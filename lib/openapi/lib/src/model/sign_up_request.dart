//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_request.g.dart';

/// SignUpRequest
///
/// Properties:
/// * [accountName] - アカウント名
/// * [idAccount] - アカウントID
/// * [email] - メールアドレス
/// * [password] - パスワード
/// * [birthDate] - 生年月日
@BuiltValue()
abstract class SignUpRequest implements Built<SignUpRequest, SignUpRequestBuilder> {
  /// アカウント名
  @BuiltValueField(wireName: r'account_name')
  String get accountName;

  /// アカウントID
  @BuiltValueField(wireName: r'id_account')
  String get idAccount;

  /// メールアドレス
  @BuiltValueField(wireName: r'email')
  String get email;

  /// パスワード
  @BuiltValueField(wireName: r'password')
  String get password;

  /// 生年月日
  @BuiltValueField(wireName: r'birth_date')
  Date get birthDate;

  SignUpRequest._();

  factory SignUpRequest([void updates(SignUpRequestBuilder b)]) = _$SignUpRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpRequest> get serializer => _$SignUpRequestSerializer();
}

class _$SignUpRequestSerializer implements PrimitiveSerializer<SignUpRequest> {
  @override
  final Iterable<Type> types = const [SignUpRequest, _$SignUpRequest];

  @override
  final String wireName = r'SignUpRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_name';
    yield serializers.serialize(
      object.accountName,
      specifiedType: const FullType(String),
    );
    yield r'id_account';
    yield serializers.serialize(
      object.idAccount,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'birth_date';
    yield serializers.serialize(
      object.birthDate,
      specifiedType: const FullType(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignUpRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'id_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idAccount = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignUpRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpRequestBuilder();
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

