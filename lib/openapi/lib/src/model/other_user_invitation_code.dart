//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'other_user_invitation_code.g.dart';

/// OtherUserInvitationCode
@BuiltValue()
abstract class OtherUserInvitationCode implements Built<OtherUserInvitationCode, OtherUserInvitationCodeBuilder> {
  /// Any Of [JsonObject], [String]
  AnyOf get anyOf;

  OtherUserInvitationCode._();

  factory OtherUserInvitationCode([void updates(OtherUserInvitationCodeBuilder b)]) = _$OtherUserInvitationCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OtherUserInvitationCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OtherUserInvitationCode> get serializer => _$OtherUserInvitationCodeSerializer();
}

class _$OtherUserInvitationCodeSerializer implements PrimitiveSerializer<OtherUserInvitationCode> {
  @override
  final Iterable<Type> types = const [OtherUserInvitationCode, _$OtherUserInvitationCode];

  @override
  final String wireName = r'OtherUserInvitationCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OtherUserInvitationCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    OtherUserInvitationCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  OtherUserInvitationCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OtherUserInvitationCodeBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

