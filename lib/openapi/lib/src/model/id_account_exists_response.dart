//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/id_account_exists_response_item.dart';
import 'package:openapi/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_account_exists_response.g.dart';

/// IdAccountExistsResponse
///
/// Properties:
/// * [status] - ステータスコード
/// * [data] - 存在確認結果
/// * [message] 
@BuiltValue()
abstract class IdAccountExistsResponse implements Built<IdAccountExistsResponse, IdAccountExistsResponseBuilder> {
  /// ステータスコード
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// 存在確認結果
  @BuiltValueField(wireName: r'data')
  IdAccountExistsResponseItem? get data;

  @BuiltValueField(wireName: r'message')
  Message? get message;

  IdAccountExistsResponse._();

  factory IdAccountExistsResponse([void updates(IdAccountExistsResponseBuilder b)]) = _$IdAccountExistsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdAccountExistsResponseBuilder b) => b
      ..status = 200;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdAccountExistsResponse> get serializer => _$IdAccountExistsResponseSerializer();
}

class _$IdAccountExistsResponseSerializer implements PrimitiveSerializer<IdAccountExistsResponse> {
  @override
  final Iterable<Type> types = const [IdAccountExistsResponse, _$IdAccountExistsResponse];

  @override
  final String wireName = r'IdAccountExistsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdAccountExistsResponse object, {
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
        specifiedType: const FullType(IdAccountExistsResponseItem),
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
    IdAccountExistsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdAccountExistsResponseBuilder result,
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
            specifiedType: const FullType(IdAccountExistsResponseItem),
          ) as IdAccountExistsResponseItem;
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
  IdAccountExistsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdAccountExistsResponseBuilder();
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

