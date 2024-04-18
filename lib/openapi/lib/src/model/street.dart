//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'street.g.dart';

/// Street
@BuiltValue()
abstract class Street implements Built<Street, StreetBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  Street._();

  factory Street([void updates(StreetBuilder b)]) = _$Street;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Street> get serializer => _$StreetSerializer();
}

class _$StreetSerializer implements PrimitiveSerializer<Street> {
  @override
  final Iterable<Type> types = const [Street, _$Street];

  @override
  final String wireName = r'Street';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Street object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Street object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Street deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreetBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

