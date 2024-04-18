//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'updated_at.g.dart';

/// UpdatedAt
@BuiltValue()
abstract class UpdatedAt implements Built<UpdatedAt, UpdatedAtBuilder> {
  /// Any Of [DateTime], [JsonObject]
  AnyOf get anyOf;

  UpdatedAt._();

  factory UpdatedAt([void updates(UpdatedAtBuilder b)]) = _$UpdatedAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatedAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatedAt> get serializer => _$UpdatedAtSerializer();
}

class _$UpdatedAtSerializer implements PrimitiveSerializer<UpdatedAt> {
  @override
  final Iterable<Type> types = const [UpdatedAt, _$UpdatedAt];

  @override
  final String wireName = r'UpdatedAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  UpdatedAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatedAtBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(DateTime), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

