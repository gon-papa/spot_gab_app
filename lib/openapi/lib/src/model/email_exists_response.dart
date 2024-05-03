//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/email_exists_response_item.dart';
import 'package:openapi/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_exists_response.g.dart';

/// EmailExistsResponse
///
/// Properties:
/// * [status] - ステータスコード
/// * [data] - 存在確認結果
/// * [message] 
@BuiltValue()
abstract class EmailExistsResponse implements Built<EmailExistsResponse, EmailExistsResponseBuilder> {
  /// ステータスコード
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// 存在確認結果
  @BuiltValueField(wireName: r'data')
  EmailExistsResponseItem? get data;

  @BuiltValueField(wireName: r'message')
  Message? get message;

  EmailExistsResponse._();

  factory EmailExistsResponse([void updates(EmailExistsResponseBuilder b)]) = _$EmailExistsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailExistsResponseBuilder b) => b
      ..status = 200;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailExistsResponse> get serializer => _$EmailExistsResponseSerializer();
}

class _$EmailExistsResponseSerializer implements PrimitiveSerializer<EmailExistsResponse> {
  @override
  final Iterable<Type> types = const [EmailExistsResponse, _$EmailExistsResponse];

  @override
  final String wireName = r'EmailExistsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailExistsResponse object, {
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
        specifiedType: const FullType(EmailExistsResponseItem),
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
    EmailExistsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmailExistsResponseBuilder result,
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
            specifiedType: const FullType(EmailExistsResponseItem),
          ) as EmailExistsResponseItem;
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
  EmailExistsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailExistsResponseBuilder();
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

