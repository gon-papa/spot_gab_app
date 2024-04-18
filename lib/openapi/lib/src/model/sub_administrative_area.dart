//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'sub_administrative_area.g.dart';

/// SubAdministrativeArea
@BuiltValue()
abstract class SubAdministrativeArea implements Built<SubAdministrativeArea, SubAdministrativeAreaBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  SubAdministrativeArea._();

  factory SubAdministrativeArea([void updates(SubAdministrativeAreaBuilder b)]) = _$SubAdministrativeArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubAdministrativeAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubAdministrativeArea> get serializer => _$SubAdministrativeAreaSerializer();
}

class _$SubAdministrativeAreaSerializer implements PrimitiveSerializer<SubAdministrativeArea> {
  @override
  final Iterable<Type> types = const [SubAdministrativeArea, _$SubAdministrativeArea];

  @override
  final String wireName = r'SubAdministrativeArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubAdministrativeArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SubAdministrativeArea object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SubAdministrativeArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubAdministrativeAreaBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

