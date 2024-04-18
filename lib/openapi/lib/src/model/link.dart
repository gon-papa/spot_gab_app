//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'link.g.dart';

/// Link
@BuiltValue()
abstract class Link implements Built<Link, LinkBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  Link._();

  factory Link([void updates(LinkBuilder b)]) = _$Link;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Link> get serializer => _$LinkSerializer();
}

class _$LinkSerializer implements PrimitiveSerializer<Link> {
  @override
  final Iterable<Type> types = const [Link, _$Link];

  @override
  final String wireName = r'Link';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Link object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Link object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Link deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

