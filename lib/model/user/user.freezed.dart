// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get idAccount => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get otherUserInvitationCode => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String uuid,
      String accountName,
      String idAccount,
      String email,
      String birthDate,
      String otherUserInvitationCode,
      bool isEmailVerified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? accountName = null,
    Object? idAccount = null,
    Object? email = null,
    Object? birthDate = null,
    Object? otherUserInvitationCode = null,
    Object? isEmailVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      idAccount: null == idAccount
          ? _value.idAccount
          : idAccount // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserInvitationCode: null == otherUserInvitationCode
          ? _value.otherUserInvitationCode
          : otherUserInvitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String uuid,
      String accountName,
      String idAccount,
      String email,
      String birthDate,
      String otherUserInvitationCode,
      bool isEmailVerified});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? accountName = null,
    Object? idAccount = null,
    Object? email = null,
    Object? birthDate = null,
    Object? otherUserInvitationCode = null,
    Object? isEmailVerified = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      idAccount: null == idAccount
          ? _value.idAccount
          : idAccount // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserInvitationCode: null == otherUserInvitationCode
          ? _value.otherUserInvitationCode
          : otherUserInvitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.uuid,
      required this.accountName,
      required this.idAccount,
      required this.email,
      required this.birthDate,
      required this.otherUserInvitationCode,
      required this.isEmailVerified});

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String accountName;
  @override
  final String idAccount;
  @override
  final String email;
  @override
  final String birthDate;
  @override
  final String otherUserInvitationCode;
  @override
  final bool isEmailVerified;

  @override
  String toString() {
    return 'User(id: $id, uuid: $uuid, accountName: $accountName, idAccount: $idAccount, email: $email, birthDate: $birthDate, otherUserInvitationCode: $otherUserInvitationCode, isEmailVerified: $isEmailVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.idAccount, idAccount) ||
                other.idAccount == idAccount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(
                    other.otherUserInvitationCode, otherUserInvitationCode) ||
                other.otherUserInvitationCode == otherUserInvitationCode) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, uuid, accountName, idAccount,
      email, birthDate, otherUserInvitationCode, isEmailVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String uuid,
      required final String accountName,
      required final String idAccount,
      required final String email,
      required final String birthDate,
      required final String otherUserInvitationCode,
      required final bool isEmailVerified}) = _$UserImpl;

  @override
  int get id;
  @override
  String get uuid;
  @override
  String get accountName;
  @override
  String get idAccount;
  @override
  String get email;
  @override
  String get birthDate;
  @override
  String get otherUserInvitationCode;
  @override
  bool get isEmailVerified;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
