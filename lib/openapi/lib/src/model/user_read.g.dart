// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_read.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRead extends UserRead {
  @override
  final String uuid;
  @override
  final String accountName;
  @override
  final String idAccount;
  @override
  final DeletedAt? deletedAt;
  @override
  final CreatedAt? createdAt;
  @override
  final UpdatedAt? updatedAt;
  @override
  final ImageId? imageId;
  @override
  final AuthenticatedUserFile? file;

  factory _$UserRead([void Function(UserReadBuilder)? updates]) =>
      (new UserReadBuilder()..update(updates))._build();

  _$UserRead._(
      {required this.uuid,
      required this.accountName,
      required this.idAccount,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.imageId,
      this.file})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uuid, r'UserRead', 'uuid');
    BuiltValueNullFieldError.checkNotNull(
        accountName, r'UserRead', 'accountName');
    BuiltValueNullFieldError.checkNotNull(idAccount, r'UserRead', 'idAccount');
  }

  @override
  UserRead rebuild(void Function(UserReadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserReadBuilder toBuilder() => new UserReadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRead &&
        uuid == other.uuid &&
        accountName == other.accountName &&
        idAccount == other.idAccount &&
        deletedAt == other.deletedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        imageId == other.imageId &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, idAccount.hashCode);
    _$hash = $jc(_$hash, deletedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRead')
          ..add('uuid', uuid)
          ..add('accountName', accountName)
          ..add('idAccount', idAccount)
          ..add('deletedAt', deletedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('imageId', imageId)
          ..add('file', file))
        .toString();
  }
}

class UserReadBuilder implements Builder<UserRead, UserReadBuilder> {
  _$UserRead? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _idAccount;
  String? get idAccount => _$this._idAccount;
  set idAccount(String? idAccount) => _$this._idAccount = idAccount;

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

  ImageIdBuilder? _imageId;
  ImageIdBuilder get imageId => _$this._imageId ??= new ImageIdBuilder();
  set imageId(ImageIdBuilder? imageId) => _$this._imageId = imageId;

  AuthenticatedUserFileBuilder? _file;
  AuthenticatedUserFileBuilder get file =>
      _$this._file ??= new AuthenticatedUserFileBuilder();
  set file(AuthenticatedUserFileBuilder? file) => _$this._file = file;

  UserReadBuilder() {
    UserRead._defaults(this);
  }

  UserReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _accountName = $v.accountName;
      _idAccount = $v.idAccount;
      _deletedAt = $v.deletedAt?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _updatedAt = $v.updatedAt?.toBuilder();
      _imageId = $v.imageId?.toBuilder();
      _file = $v.file?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRead;
  }

  @override
  void update(void Function(UserReadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRead build() => _build();

  _$UserRead _build() {
    _$UserRead _$result;
    try {
      _$result = _$v ??
          new _$UserRead._(
              uuid: BuiltValueNullFieldError.checkNotNull(
                  uuid, r'UserRead', 'uuid'),
              accountName: BuiltValueNullFieldError.checkNotNull(
                  accountName, r'UserRead', 'accountName'),
              idAccount: BuiltValueNullFieldError.checkNotNull(
                  idAccount, r'UserRead', 'idAccount'),
              deletedAt: _deletedAt?.build(),
              createdAt: _createdAt?.build(),
              updatedAt: _updatedAt?.build(),
              imageId: _imageId?.build(),
              file: _file?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deletedAt';
        _deletedAt?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'updatedAt';
        _updatedAt?.build();
        _$failedField = 'imageId';
        _imageId?.build();
        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserRead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
