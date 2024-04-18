//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'sub_locality.g.dart';

/// SubLocality
@BuiltValue()
abstract class SubLocality implements Built<SubLocality, SubLocalityBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  SubLocality._();

  factory SubLocality([void updates(SubLocalityBuilder b)]) = _$SubLocality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubLocalityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubLocality> get serializer => _$SubLocalitySerializer();
}

class _$SubLocalitySerializer implements PrimitiveSerializer<SubLocality> {
  @override
  final Iterable<Type> types = const [SubLocality, _$SubLocality];

  @override
  final String wireName = r'SubLocality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubLocality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SubLocality object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SubLocality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubLocalityBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

