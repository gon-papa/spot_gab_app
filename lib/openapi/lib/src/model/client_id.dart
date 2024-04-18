//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'client_id.g.dart';

/// ClientId
@BuiltValue()
abstract class ClientId implements Built<ClientId, ClientIdBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  ClientId._();

  factory ClientId([void updates(ClientIdBuilder b)]) = _$ClientId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientId> get serializer => _$ClientIdSerializer();
}

class _$ClientIdSerializer implements PrimitiveSerializer<ClientId> {
  @override
  final Iterable<Type> types = const [ClientId, _$ClientId];

  @override
  final String wireName = r'ClientId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  ClientId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientIdBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

