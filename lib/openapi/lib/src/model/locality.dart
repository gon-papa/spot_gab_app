//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'locality.g.dart';

/// Locality
@BuiltValue()
abstract class Locality implements Built<Locality, LocalityBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  Locality._();

  factory Locality([void updates(LocalityBuilder b)]) = _$Locality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocalityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Locality> get serializer => _$LocalitySerializer();
}

class _$LocalitySerializer implements PrimitiveSerializer<Locality> {
  @override
  final Iterable<Type> types = const [Locality, _$Locality];

  @override
  final String wireName = r'Locality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Locality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Locality object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Locality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalityBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

