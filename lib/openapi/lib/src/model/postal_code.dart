//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'postal_code.g.dart';

/// PostalCode
@BuiltValue()
abstract class PostalCode implements Built<PostalCode, PostalCodeBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  PostalCode._();

  factory PostalCode([void updates(PostalCodeBuilder b)]) = _$PostalCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostalCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostalCode> get serializer => _$PostalCodeSerializer();
}

class _$PostalCodeSerializer implements PrimitiveSerializer<PostalCode> {
  @override
  final Iterable<Type> types = const [PostalCode, _$PostalCode];

  @override
  final String wireName = r'PostalCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostalCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostalCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostalCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostalCodeBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

