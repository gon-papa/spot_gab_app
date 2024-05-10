//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/updated_at.dart';
import 'package:openapi/src/model/deleted_at.dart';
import 'package:openapi/src/model/image_id.dart';
import 'package:openapi/src/model/authenticated_user_file.dart';
import 'package:openapi/src/model/created_at.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_read.g.dart';

/// UserRead
///
/// Properties:
/// * [uuid] 
/// * [accountName] 
/// * [idAccount] 
/// * [deletedAt] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [imageId] 
/// * [file] 
@BuiltValue()
abstract class UserRead implements Built<UserRead, UserReadBuilder> {
  @BuiltValueField(wireName: r'uuid')
  String get uuid;

  @BuiltValueField(wireName: r'account_name')
  String get accountName;

  @BuiltValueField(wireName: r'id_account')
  String get idAccount;

  @BuiltValueField(wireName: r'deleted_at')
  DeletedAt? get deletedAt;

  @BuiltValueField(wireName: r'created_at')
  CreatedAt? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  UpdatedAt? get updatedAt;

  @BuiltValueField(wireName: r'image_id')
  ImageId? get imageId;

  @BuiltValueField(wireName: r'file')
  AuthenticatedUserFile? get file;

  UserRead._();

  factory UserRead([void updates(UserReadBuilder b)]) = _$UserRead;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserReadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRead> get serializer => _$UserReadSerializer();
}

class _$UserReadSerializer implements PrimitiveSerializer<UserRead> {
  @override
  final Iterable<Type> types = const [UserRead, _$UserRead];

  @override
  final String wireName = r'UserRead';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRead object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uuid';
    yield serializers.serialize(
      object.uuid,
      specifiedType: const FullType(String),
    );
    yield r'account_name';
    yield serializers.serialize(
      object.accountName,
      specifiedType: const FullType(String),
    );
    yield r'id_account';
    yield serializers.serialize(
      object.idAccount,
      specifiedType: const FullType(String),
    );
    if (object.deletedAt != null) {
      yield r'deleted_at';
      yield serializers.serialize(
        object.deletedAt,
        specifiedType: const FullType(DeletedAt),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(CreatedAt),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(UpdatedAt),
      );
    }
    if (object.imageId != null) {
      yield r'image_id';
      yield serializers.serialize(
        object.imageId,
        specifiedType: const FullType(ImageId),
      );
    }
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(AuthenticatedUserFile),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRead object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserReadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
          break;
        case r'account_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'id_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idAccount = valueDes;
          break;
        case r'deleted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeletedAt),
          ) as DeletedAt;
          result.deletedAt.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreatedAt),
          ) as CreatedAt;
          result.createdAt.replace(valueDes);
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdatedAt),
          ) as UpdatedAt;
          result.updatedAt.replace(valueDes);
          break;
        case r'image_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageId),
          ) as ImageId;
          result.imageId.replace(valueDes);
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticatedUserFile),
          ) as AuthenticatedUserFile;
          result.file.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRead deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserReadBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

