// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Me extends Me {
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

  factory _$Me([void Function(MeBuilder)? updates]) =>
      (new MeBuilder()..update(updates))._build();

  _$Me._(
      {required this.id,
      this.imageId,
      required this.uuid,
      this.file,
      required this.accountName,
      required this.idAccount,
      required this.email,
      required this.birthDate,
      this.otherUserInvitationCode,
      required this.expiresAt,
      required this.emailVerified,
      this.profile,
      this.link,
      this.deletedAt,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Me', 'id');
    BuiltValueNullFieldError.checkNotNull(uuid, r'Me', 'uuid');
    BuiltValueNullFieldError.checkNotNull(accountName, r'Me', 'accountName');
    BuiltValueNullFieldError.checkNotNull(idAccount, r'Me', 'idAccount');
    BuiltValueNullFieldError.checkNotNull(email, r'Me', 'email');
    BuiltValueNullFieldError.checkNotNull(birthDate, r'Me', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(expiresAt, r'Me', 'expiresAt');
    BuiltValueNullFieldError.checkNotNull(
        emailVerified, r'Me', 'emailVerified');
  }

  @override
  Me rebuild(void Function(MeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeBuilder toBuilder() => new MeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Me &&
        id == other.id &&
        imageId == other.imageId &&
        uuid == other.uuid &&
        file == other.file &&
        accountName == other.accountName &&
        idAccount == other.idAccount &&
        email == other.email &&
        birthDate == other.birthDate &&
        otherUserInvitationCode == other.otherUserInvitationCode &&
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
    return (newBuiltValueToStringHelper(r'Me')
          ..add('id', id)
          ..add('imageId', imageId)
          ..add('uuid', uuid)
          ..add('file', file)
          ..add('accountName', accountName)
          ..add('idAccount', idAccount)
          ..add('email', email)
          ..add('birthDate', birthDate)
          ..add('otherUserInvitationCode', otherUserInvitationCode)
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

class MeBuilder implements Builder<Me, MeBuilder> {
  _$Me? _$v;

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

  MeBuilder() {
    Me._defaults(this);
  }

  MeBuilder get _$this {
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
  void replace(Me other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Me;
  }

  @override
  void update(void Function(MeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Me build() => _build();

  _$Me _build() {
    _$Me _$result;
    try {
      _$result = _$v ??
          new _$Me._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Me', 'id'),
              imageId: _imageId?.build(),
              uuid: BuiltValueNullFieldError.checkNotNull(uuid, r'Me', 'uuid'),
              file: _file?.build(),
              accountName: BuiltValueNullFieldError.checkNotNull(
                  accountName, r'Me', 'accountName'),
              idAccount: BuiltValueNullFieldError.checkNotNull(
                  idAccount, r'Me', 'idAccount'),
              email:
                  BuiltValueNullFieldError.checkNotNull(email, r'Me', 'email'),
              birthDate: BuiltValueNullFieldError.checkNotNull(
                  birthDate, r'Me', 'birthDate'),
              otherUserInvitationCode: _otherUserInvitationCode?.build(),
              expiresAt: BuiltValueNullFieldError.checkNotNull(
                  expiresAt, r'Me', 'expiresAt'),
              emailVerified: BuiltValueNullFieldError.checkNotNull(
                  emailVerified, r'Me', 'emailVerified'),
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
            r'Me', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
