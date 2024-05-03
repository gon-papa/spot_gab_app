// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticatedUser extends AuthenticatedUser {
  @override
  final int id;
  @override
  final ImageId? imageId;
  @override
  final String uuid;
  @override
  final AuthenticatedUserFile? file;
  @override
  final String accountName;
  @override
  final String idAccount;
  @override
  final String email;
  @override
  final Date birthDate;
  @override
  final OtherUserInvitationCode? otherUserInvitationCode;
  @override
  final Token? token;
  @override
  final String refreshToken;
  @override
  final DateTime expiresAt;
  @override
  final bool emailVerified;
  @override
  final Profile? profile;
  @override
  final Link? link;
  @override
  final DeletedAt? deletedAt;
  @override
  final CreatedAt? createdAt;
  @override
  final UpdatedAt? updatedAt;

  factory _$AuthenticatedUser(
          [void Function(AuthenticatedUserBuilder)? updates]) =>
      (new AuthenticatedUserBuilder()..update(updates))._build();

  _$AuthenticatedUser._(
      {required this.id,
      this.imageId,
      required this.uuid,
      this.file,
      required this.accountName,
      required this.idAccount,
      required this.email,
      required this.birthDate,
      this.otherUserInvitationCode,
      this.token,
      required this.refreshToken,
      required this.expiresAt,
      required this.emailVerified,
      this.profile,
      this.link,
      this.deletedAt,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AuthenticatedUser', 'id');
    BuiltValueNullFieldError.checkNotNull(uuid, r'AuthenticatedUser', 'uuid');
    BuiltValueNullFieldError.checkNotNull(
        accountName, r'AuthenticatedUser', 'accountName');
    BuiltValueNullFieldError.checkNotNull(
        idAccount, r'AuthenticatedUser', 'idAccount');
    BuiltValueNullFieldError.checkNotNull(email, r'AuthenticatedUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'AuthenticatedUser', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'AuthenticatedUser', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        expiresAt, r'AuthenticatedUser', 'expiresAt');
    BuiltValueNullFieldError.checkNotNull(
        emailVerified, r'AuthenticatedUser', 'emailVerified');
  }

  @override
  AuthenticatedUser rebuild(void Function(AuthenticatedUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticatedUserBuilder toBuilder() =>
      new AuthenticatedUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticatedUser &&
        id == other.id &&
        imageId == other.imageId &&
        uuid == other.uuid &&
        file == other.file &&
        accountName == other.accountName &&
        idAccount == other.idAccount &&
        email == other.email &&
        birthDate == other.birthDate &&
        otherUserInvitationCode == other.otherUserInvitationCode &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        expiresAt == other.expiresAt &&
        emailVerified == other.emailVerified &&
        profile == other.profile &&
        link == other.link &&
        deletedAt == other.deletedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, idAccount.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, otherUserInvitationCode.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, emailVerified.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, deletedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticatedUser')
          ..add('id', id)
          ..add('imageId', imageId)
          ..add('uuid', uuid)
          ..add('file', file)
          ..add('accountName', accountName)
          ..add('idAccount', idAccount)
          ..add('email', email)
          ..add('birthDate', birthDate)
          ..add('otherUserInvitationCode', otherUserInvitationCode)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('expiresAt', expiresAt)
          ..add('emailVerified', emailVerified)
          ..add('profile', profile)
          ..add('link', link)
          ..add('deletedAt', deletedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AuthenticatedUserBuilder
    implements Builder<AuthenticatedUser, AuthenticatedUserBuilder> {
  _$AuthenticatedUser? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ImageIdBuilder? _imageId;
  ImageIdBuilder get imageId => _$this._imageId ??= new ImageIdBuilder();
  set imageId(ImageIdBuilder? imageId) => _$this._imageId = imageId;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  AuthenticatedUserFileBuilder? _file;
  AuthenticatedUserFileBuilder get file =>
      _$this._file ??= new AuthenticatedUserFileBuilder();
  set file(AuthenticatedUserFileBuilder? file) => _$this._file = file;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _idAccount;
  String? get idAccount => _$this._idAccount;
  set idAccount(String? idAccount) => _$this._idAccount = idAccount;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Date? _birthDate;
  Date? get birthDate => _$this._birthDate;
  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  OtherUserInvitationCodeBuilder? _otherUserInvitationCode;
  OtherUserInvitationCodeBuilder get otherUserInvitationCode =>
      _$this._otherUserInvitationCode ??= new OtherUserInvitationCodeBuilder();
  set otherUserInvitationCode(
          OtherUserInvitationCodeBuilder? otherUserInvitationCode) =>
      _$this._otherUserInvitationCode = otherUserInvitationCode;

  TokenBuilder? _token;
  TokenBuilder get token => _$this._token ??= new TokenBuilder();
  set token(TokenBuilder? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  bool? _emailVerified;
  bool? get emailVerified => _$this._emailVerified;
  set emailVerified(bool? emailVerified) =>
      _$this._emailVerified = emailVerified;

  ProfileBuilder? _profile;
  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();
  set profile(ProfileBuilder? profile) => _$this._profile = profile;

  LinkBuilder? _link;
  LinkBuilder get link => _$this._link ??= new LinkBuilder();
  set link(LinkBuilder? link) => _$this._link = link;

  DeletedAtBuilder? _deletedAt;
  DeletedAtBuilder get deletedAt =>
      _$this._deletedAt ??= new DeletedAtBuilder();
  set deletedAt(DeletedAtBuilder? deletedAt) => _$this._deletedAt = deletedAt;

  CreatedAtBuilder? _createdAt;
  CreatedAtBuilder get createdAt =>
      _$this._createdAt ??= new CreatedAtBuilder();
  set createdAt(CreatedAtBuilder? createdAt) => _$this._createdAt = createdAt;

  UpdatedAtBuilder? _updatedAt;
  UpdatedAtBuilder get updatedAt =>
      _$this._updatedAt ??= new UpdatedAtBuilder();
  set updatedAt(UpdatedAtBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  AuthenticatedUserBuilder() {
    AuthenticatedUser._defaults(this);
  }

  AuthenticatedUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _imageId = $v.imageId?.toBuilder();
      _uuid = $v.uuid;
      _file = $v.file?.toBuilder();
      _accountName = $v.accountName;
      _idAccount = $v.idAccount;
      _email = $v.email;
      _birthDate = $v.birthDate;
      _otherUserInvitationCode = $v.otherUserInvitationCode?.toBuilder();
      _token = $v.token?.toBuilder();
      _refreshToken = $v.refreshToken;
      _expiresAt = $v.expiresAt;
      _emailVerified = $v.emailVerified;
      _profile = $v.profile?.toBuilder();
      _link = $v.link?.toBuilder();
      _deletedAt = $v.deletedAt?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _updatedAt = $v.updatedAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticatedUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticatedUser;
  }

  @override
  void update(void Function(AuthenticatedUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticatedUser build() => _build();

  _$AuthenticatedUser _build() {
    _$AuthenticatedUser _$result;
    try {
      _$result = _$v ??
          new _$AuthenticatedUser._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AuthenticatedUser', 'id'),
              imageId: _imageId?.build(),
              uuid: BuiltValueNullFieldError.checkNotNull(
                  uuid, r'AuthenticatedUser', 'uuid'),
              file: _file?.build(),
              accountName: BuiltValueNullFieldError.checkNotNull(
                  accountName, r'AuthenticatedUser', 'accountName'),
              idAccount: BuiltValueNullFieldError.checkNotNull(
                  idAccount, r'AuthenticatedUser', 'idAccount'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'AuthenticatedUser', 'email'),
              birthDate: BuiltValueNullFieldError.checkNotNull(
                  birthDate, r'AuthenticatedUser', 'birthDate'),
              otherUserInvitationCode: _otherUserInvitationCode?.build(),
              token: _token?.build(),
              refreshToken: BuiltValueNullFieldError.checkNotNull(
                  refreshToken, r'AuthenticatedUser', 'refreshToken'),
              expiresAt: BuiltValueNullFieldError.checkNotNull(
                  expiresAt, r'AuthenticatedUser', 'expiresAt'),
              emailVerified:
                  BuiltValueNullFieldError.checkNotNull(emailVerified, r'AuthenticatedUser', 'emailVerified'),
              profile: _profile?.build(),
              link: _link?.build(),
              deletedAt: _deletedAt?.build(),
              createdAt: _createdAt?.build(),
              updatedAt: _updatedAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageId';
        _imageId?.build();

        _$failedField = 'file';
        _file?.build();

        _$failedField = 'otherUserInvitationCode';
        _otherUserInvitationCode?.build();
        _$failedField = 'token';
        _token?.build();

        _$failedField = 'profile';
        _profile?.build();
        _$failedField = 'link';
        _link?.build();
        _$failedField = 'deletedAt';
        _deletedAt?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'updatedAt';
        _updatedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthenticatedUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
