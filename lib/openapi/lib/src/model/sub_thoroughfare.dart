//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'sub_thoroughfare.g.dart';

/// SubThoroughfare
@BuiltValue()
abstract class SubThoroughfare implements Built<SubThoroughfare, SubThoroughfareBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  SubThoroughfare._();

  factory SubThoroughfare([void updates(SubThoroughfareBuilder b)]) = _$SubThoroughfare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubThoroughfareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubThoroughfare> get serializer => _$SubThoroughfareSerializer();
}

class _$SubThoroughfareSerializer implements PrimitiveSerializer<SubThoroughfare> {
  @override
  final Iterable<Type> types = const [SubThoroughfare, _$SubThoroughfare];

  @override
  final String wireName = r'SubThoroughfare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubThoroughfare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SubThoroughfare object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SubThoroughfare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubThoroughfareBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

