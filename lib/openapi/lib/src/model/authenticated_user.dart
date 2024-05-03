//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/token.dart';
import 'package:openapi/src/model/updated_at.dart';
import 'package:openapi/src/model/deleted_at.dart';
import 'package:openapi/src/model/link.dart';
import 'package:openapi/src/model/image_id.dart';
import 'package:openapi/src/model/other_user_invitation_code.dart';
import 'package:openapi/src/model/profile.dart';
import 'package:openapi/src/model/authenticated_user_file.dart';
import 'package:openapi/src/model/created_at.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authenticated_user.g.dart';

/// AuthenticatedUser
///
/// Properties:
/// * [id] 
/// * [imageId] 
/// * [uuid] 
/// * [file] 
/// * [accountName] 
/// * [idAccount] 
/// * [email] 
/// * [birthDate] 
/// * [otherUserInvitationCode] 
/// * [token] 
/// * [refreshToken] 
/// * [expiresAt] 
/// * [emailVerified] 
/// * [profile] 
/// * [link] 
/// * [deletedAt] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class AuthenticatedUser implements Built<AuthenticatedUser, AuthenticatedUserBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'image_id')
  ImageId? get imageId;

  @BuiltValueField(wireName: r'uuid')
  String get uuid;

  @BuiltValueField(wireName: r'file')
  AuthenticatedUserFile? get file;

  @BuiltValueField(wireName: r'account_name')
  String get accountName;

  @BuiltValueField(wireName: r'id_account')
  String get idAccount;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'birth_date')
  Date get birthDate;

  @BuiltValueField(wireName: r'other_user_invitation_code')
  OtherUserInvitationCode? get otherUserInvitationCode;

  @BuiltValueField(wireName: r'token')
  Token? get token;

  @BuiltValueField(wireName: r'refresh_token')
  String get refreshToken;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'email_verified')
  bool get emailVerified;

  @BuiltValueField(wireName: r'profile')
  Profile? get profile;

  @BuiltValueField(wireName: r'link')
  Link? get link;

  @BuiltValueField(wireName: r'deleted_at')
  DeletedAt? get deletedAt;

  @BuiltValueField(wireName: r'created_at')
  CreatedAt? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  UpdatedAt? get updatedAt;

  AuthenticatedUser._();

  factory AuthenticatedUser([void updates(AuthenticatedUserBuilder b)]) = _$AuthenticatedUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticatedUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticatedUser> get serializer => _$AuthenticatedUserSerializer();
}

class _$AuthenticatedUserSerializer implements PrimitiveSerializer<AuthenticatedUser> {
  @override
  final Iterable<Type> types = const [AuthenticatedUser, _$AuthenticatedUser];

  @override
  final String wireName = r'AuthenticatedUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticatedUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.imageId != null) {
      yield r'image_id';
      yield serializers.serialize(
        object.imageId,
        specifiedType: const FullType(ImageId),
      );
    }
    yield r'uuid';
    yield serializers.serialize(
      object.uuid,
      specifiedType: const FullType(String),
    );
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(AuthenticatedUserFile),
      );
    }
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
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'birth_date';
    yield serializers.serialize(
      object.birthDate,
      specifiedType: const FullType(Date),
    );
    if (object.otherUserInvitationCode != null) {
      yield r'other_user_invitation_code';
      yield serializers.serialize(
        object.otherUserInvitationCode,
        specifiedType: const FullType(OtherUserInvitationCode),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(Token),
      );
    }
    yield r'refresh_token';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'email_verified';
    yield serializers.serialize(
      object.emailVerified,
      specifiedType: const FullType(bool),
    );
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType(Profile),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(Link),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthenticatedUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthenticatedUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'image_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageId),
          ) as ImageId;
          result.imageId.replace(valueDes);
          break;
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticatedUserFile),
          ) as AuthenticatedUserFile;
          result.file.replace(valueDes);
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        case r'other_user_invitation_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OtherUserInvitationCode),
          ) as OtherUserInvitationCode;
          result.otherUserInvitationCode.replace(valueDes);
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Token),
          ) as Token;
          result.token.replace(valueDes);
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Profile),
          ) as Profile;
          result.profile.replace(valueDes);
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.link.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthenticatedUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticatedUserBuilder();
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

