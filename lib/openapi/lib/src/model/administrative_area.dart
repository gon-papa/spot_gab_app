//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'administrative_area.g.dart';

/// AdministrativeArea
@BuiltValue()
abstract class AdministrativeArea implements Built<AdministrativeArea, AdministrativeAreaBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  AdministrativeArea._();

  factory AdministrativeArea([void updates(AdministrativeAreaBuilder b)]) = _$AdministrativeArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdministrativeAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdministrativeArea> get serializer => _$AdministrativeAreaSerializer();
}

class _$AdministrativeAreaSerializer implements PrimitiveSerializer<AdministrativeArea> {
  @override
  final Iterable<Type> types = const [AdministrativeArea, _$AdministrativeArea];

  @override
  final String wireName = r'AdministrativeArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdministrativeArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    AdministrativeArea object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  AdministrativeArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdministrativeAreaBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

