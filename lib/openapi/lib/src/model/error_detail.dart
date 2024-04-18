//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_detail.g.dart';

/// ErrorDetail
///
/// Properties:
/// * [loc] - エラー箇所
/// * [msg] - エラーメッセージ
/// * [type] - エラータイプ
@BuiltValue()
abstract class ErrorDetail implements Built<ErrorDetail, ErrorDetailBuilder> {
  /// エラー箇所
  @BuiltValueField(wireName: r'loc')
  BuiltList<String> get loc;

  /// エラーメッセージ
  @BuiltValueField(wireName: r'msg')
  String get msg;

  /// エラータイプ
  @BuiltValueField(wireName: r'type')
  String get type;

  ErrorDetail._();

  factory ErrorDetail([void updates(ErrorDetailBuilder b)]) = _$ErrorDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorDetail> get serializer => _$ErrorDetailSerializer();
}

class _$ErrorDetailSerializer implements PrimitiveSerializer<ErrorDetail> {
  @override
  final Iterable<Type> types = const [ErrorDetail, _$ErrorDetail];

  @override
  final String wireName = r'ErrorDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'loc';
    yield serializers.serialize(
      object.loc,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'msg';
    yield serializers.serialize(
      object.msg,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.loc.replace(valueDes);
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.msg = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorDetailBuilder();
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

