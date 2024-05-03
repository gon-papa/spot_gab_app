//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_request.g.dart';

/// UserProfileRequest
///
/// Properties:
/// * [accountName] - アカウント名
/// * [link] - リンク
/// * [profile] - プロフィール
/// * [imageUuid] - 画像UUID
@BuiltValue()
abstract class UserProfileRequest implements Built<UserProfileRequest, UserProfileRequestBuilder> {
  /// アカウント名
  @BuiltValueField(wireName: r'account_name')
  String get accountName;

  /// リンク
  @BuiltValueField(wireName: r'link')
  String? get link;

  /// プロフィール
  @BuiltValueField(wireName: r'profile')
  String? get profile;

  /// 画像UUID
  @BuiltValueField(wireName: r'image_uuid')
  String? get imageUuid;

  UserProfileRequest._();

  factory UserProfileRequest([void updates(UserProfileRequestBuilder b)]) = _$UserProfileRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileRequest> get serializer => _$UserProfileRequestSerializer();
}

class _$UserProfileRequestSerializer implements PrimitiveSerializer<UserProfileRequest> {
  @override
  final Iterable<Type> types = const [UserProfileRequest, _$UserProfileRequest];

  @override
  final String wireName = r'UserProfileRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_name';
    yield serializers.serialize(
      object.accountName,
      specifiedType: const FullType(String),
    );
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageUuid != null) {
      yield r'image_uuid';
      yield serializers.serialize(
        object.imageUuid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserProfileRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profile = valueDes;
          break;
        case r'image_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUuid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileRequestBuilder();
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

