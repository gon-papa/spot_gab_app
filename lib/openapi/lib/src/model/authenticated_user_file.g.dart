// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticatedUserFile extends AuthenticatedUserFile {
  @override
  final AnyOf anyOf;

  factory _$AuthenticatedUserFile(
          [void Function(AuthenticatedUserFileBuilder)? updates]) =>
      (new AuthenticatedUserFileBuilder()..update(updates))._build();

  _$AuthenticatedUserFile._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'AuthenticatedUserFile', 'anyOf');
  }

  @override
  AuthenticatedUserFile rebuild(
          void Function(AuthenticatedUserFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticatedUserFileBuilder toBuilder() =>
      new AuthenticatedUserFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticatedUserFile && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticatedUserFile')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class AuthenticatedUserFileBuilder
    implements Builder<AuthenticatedUserFile, AuthenticatedUserFileBuilder> {
  _$AuthenticatedUserFile? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  AuthenticatedUserFileBuilder() {
    AuthenticatedUserFile._defaults(this);
  }

  AuthenticatedUserFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticatedUserFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticatedUserFile;
  }

  @override
  void update(void Function(AuthenticatedUserFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticatedUserFile build() => _build();

  _$AuthenticatedUserFile _build() {
    final _$result = _$v ??
        new _$AuthenticatedUserFile._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'AuthenticatedUserFile', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
