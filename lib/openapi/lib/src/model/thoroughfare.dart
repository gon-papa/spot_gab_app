//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'thoroughfare.g.dart';

/// Thoroughfare
@BuiltValue()
abstract class Thoroughfare implements Built<Thoroughfare, ThoroughfareBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  Thoroughfare._();

  factory Thoroughfare([void updates(ThoroughfareBuilder b)]) = _$Thoroughfare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThoroughfareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Thoroughfare> get serializer => _$ThoroughfareSerializer();
}

class _$ThoroughfareSerializer implements PrimitiveSerializer<Thoroughfare> {
  @override
  final Iterable<Type> types = const [Thoroughfare, _$Thoroughfare];

  @override
  final String wireName = r'Thoroughfare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Thoroughfare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Thoroughfare object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Thoroughfare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThoroughfareBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

