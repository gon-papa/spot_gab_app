//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/message.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_response.g.dart';

/// JsonResponse
///
/// Properties:
/// * [status] - ステータスコード
/// * [data] 
/// * [message] 
@BuiltValue()
abstract class JsonResponse implements Built<JsonResponse, JsonResponseBuilder> {
  /// ステータスコード
  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  @BuiltValueField(wireName: r'message')
  Message? get message;

  JsonResponse._();

  factory JsonResponse([void updates(JsonResponseBuilder b)]) = _$JsonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonResponseBuilder b) => b
      ..status = 200;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonResponse> get serializer => _$JsonResponseSerializer();
}

class _$JsonResponseSerializer implements PrimitiveSerializer<JsonResponse> {
  @override
  final Iterable<Type> types = const [JsonResponse, _$JsonResponse];

  @override
  final String wireName = r'JsonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonResponse object, {
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
        specifiedType: const FullType.nullable(JsonObject),
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
    JsonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JsonResponseBuilder result,
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
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
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
  JsonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonResponseBuilder();
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

