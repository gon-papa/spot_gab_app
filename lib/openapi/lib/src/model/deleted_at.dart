//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'deleted_at.g.dart';

/// DeletedAt
@BuiltValue()
abstract class DeletedAt implements Built<DeletedAt, DeletedAtBuilder> {
  /// Any Of [DateTime], [JsonObject]
  AnyOf get anyOf;

  DeletedAt._();

  factory DeletedAt([void updates(DeletedAtBuilder b)]) = _$DeletedAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeletedAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeletedAt> get serializer => _$DeletedAtSerializer();
}

class _$DeletedAtSerializer implements PrimitiveSerializer<DeletedAt> {
  @override
  final Iterable<Type> types = const [DeletedAt, _$DeletedAt];

  @override
  final String wireName = r'DeletedAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeletedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    DeletedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  DeletedAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletedAtBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(DateTime), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

