//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/id.dart';
import 'package:openapi/src/model/files.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'authenticated_user_file.g.dart';

/// AuthenticatedUserFile
///
/// Properties:
/// * [id] 
/// * [uuid] 
/// * [name] 
/// * [path] 
/// * [isUsed] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class AuthenticatedUserFile implements Built<AuthenticatedUserFile, AuthenticatedUserFileBuilder> {
  /// Any Of [Files], [JsonObject]
  AnyOf get anyOf;

  AuthenticatedUserFile._();

  factory AuthenticatedUserFile([void updates(AuthenticatedUserFileBuilder b)]) = _$AuthenticatedUserFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticatedUserFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticatedUserFile> get serializer => _$AuthenticatedUserFileSerializer();
}

class _$AuthenticatedUserFileSerializer implements PrimitiveSerializer<AuthenticatedUserFile> {
  @override
  final Iterable<Type> types = const [AuthenticatedUserFile, _$AuthenticatedUserFile];

  @override
  final String wireName = r'AuthenticatedUserFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticatedUserFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthenticatedUserFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  AuthenticatedUserFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticatedUserFileBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Files), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

