//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/error_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_json_response.g.dart';

/// ErrorJsonResponse
///
/// Properties:
/// * [detail] - エラーメッセージ
@BuiltValue()
abstract class ErrorJsonResponse implements Built<ErrorJsonResponse, ErrorJsonResponseBuilder> {
  /// エラーメッセージ
  @BuiltValueField(wireName: r'detail')
  BuiltList<ErrorDetail> get detail;

  ErrorJsonResponse._();

  factory ErrorJsonResponse([void updates(ErrorJsonResponseBuilder b)]) = _$ErrorJsonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorJsonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorJsonResponse> get serializer => _$ErrorJsonResponseSerializer();
}

class _$ErrorJsonResponseSerializer implements PrimitiveSerializer<ErrorJsonResponse> {
  @override
  final Iterable<Type> types = const [ErrorJsonResponse, _$ErrorJsonResponse];

  @override
  final String wireName = r'ErrorJsonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorJsonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'detail';
    yield serializers.serialize(
      object.detail,
      specifiedType: const FullType(BuiltList, [FullType(ErrorDetail)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorJsonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorJsonResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ErrorDetail)]),
          ) as BuiltList<ErrorDetail>;
          result.detail.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorJsonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorJsonResponseBuilder();
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

