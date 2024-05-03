//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'created_at.g.dart';

/// CreatedAt
@BuiltValue()
abstract class CreatedAt implements Built<CreatedAt, CreatedAtBuilder> {
  /// Any Of [DateTime], [JsonObject]
  AnyOf get anyOf;

  CreatedAt._();

  factory CreatedAt([void updates(CreatedAtBuilder b)]) = _$CreatedAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatedAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatedAt> get serializer => _$CreatedAtSerializer();
}

class _$CreatedAtSerializer implements PrimitiveSerializer<CreatedAt> {
  @override
  final Iterable<Type> types = const [CreatedAt, _$CreatedAt];

  @override
  final String wireName = r'CreatedAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  CreatedAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatedAtBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(DateTime), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

