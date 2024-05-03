//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sign_up_response_item.dart';
import 'package:openapi/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_response.g.dart';

/// SignUpResponse
///
/// Properties:
/// * [status] - ステータスコード
/// * [data] - サインアップユーザー情報
/// * [message] 
@BuiltValue()
abstract class SignUpResponse implements Built<SignUpResponse, SignUpResponseBuilder> {
  /// ステータスコード
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// サインアップユーザー情報
  @BuiltValueField(wireName: r'data')
  SignUpResponseItem? get data;

  @BuiltValueField(wireName: r'message')
  Message? get message;

  SignUpResponse._();

  factory SignUpResponse([void updates(SignUpResponseBuilder b)]) = _$SignUpResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpResponseBuilder b) => b
      ..status = 200;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpResponse> get serializer => _$SignUpResponseSerializer();
}

class _$SignUpResponseSerializer implements PrimitiveSerializer<SignUpResponse> {
  @override
  final Iterable<Type> types = const [SignUpResponse, _$SignUpResponse];

  @override
  final String wireName = r'SignUpResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpResponse object, {
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
        specifiedType: const FullType(SignUpResponseItem),
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
    SignUpResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignUpResponseBuilder result,
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
            specifiedType: const FullType(SignUpResponseItem),
          ) as SignUpResponseItem;
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
  SignUpResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpResponseBuilder();
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

