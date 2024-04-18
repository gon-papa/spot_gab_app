//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'client_secret.g.dart';

/// ClientSecret
@BuiltValue()
abstract class ClientSecret implements Built<ClientSecret, ClientSecretBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  ClientSecret._();

  factory ClientSecret([void updates(ClientSecretBuilder b)]) = _$ClientSecret;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientSecretBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientSecret> get serializer => _$ClientSecretSerializer();
}

class _$ClientSecretSerializer implements PrimitiveSerializer<ClientSecret> {
  @override
  final Iterable<Type> types = const [ClientSecret, _$ClientSecret];

  @override
  final String wireName = r'ClientSecret';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientSecret object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientSecret object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  ClientSecret deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientSecretBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

