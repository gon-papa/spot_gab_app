//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'grant_type.g.dart';

/// GrantType
@BuiltValue()
abstract class GrantType implements Built<GrantType, GrantTypeBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  GrantType._();

  factory GrantType([void updates(GrantTypeBuilder b)]) = _$GrantType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantType> get serializer => _$GrantTypeSerializer();
}

class _$GrantTypeSerializer implements PrimitiveSerializer<GrantType> {
  @override
  final Iterable<Type> types = const [GrantType, _$GrantType];

  @override
  final String wireName = r'GrantType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  GrantType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantTypeBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

