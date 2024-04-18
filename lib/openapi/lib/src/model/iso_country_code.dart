//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'iso_country_code.g.dart';

/// IsoCountryCode
@BuiltValue()
abstract class IsoCountryCode implements Built<IsoCountryCode, IsoCountryCodeBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  IsoCountryCode._();

  factory IsoCountryCode([void updates(IsoCountryCodeBuilder b)]) = _$IsoCountryCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IsoCountryCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IsoCountryCode> get serializer => _$IsoCountryCodeSerializer();
}

class _$IsoCountryCodeSerializer implements PrimitiveSerializer<IsoCountryCode> {
  @override
  final Iterable<Type> types = const [IsoCountryCode, _$IsoCountryCode];

  @override
  final String wireName = r'IsoCountryCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IsoCountryCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IsoCountryCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  IsoCountryCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IsoCountryCodeBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

