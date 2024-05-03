//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'image_id.g.dart';

/// ImageId
@BuiltValue()
abstract class ImageId implements Built<ImageId, ImageIdBuilder> {
  /// Any Of [JsonObject], [int]
  AnyOf get anyOf;

  ImageId._();

  factory ImageId([void updates(ImageIdBuilder b)]) = _$ImageId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageId> get serializer => _$ImageIdSerializer();
}

class _$ImageIdSerializer implements PrimitiveSerializer<ImageId> {
  @override
  final Iterable<Type> types = const [ImageId, _$ImageId];

  @override
  final String wireName = r'ImageId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  ImageId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageIdBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

