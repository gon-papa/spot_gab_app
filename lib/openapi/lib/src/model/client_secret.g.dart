// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientSecret extends ClientSecret {
  @override
  final AnyOf anyOf;

  factory _$ClientSecret([void Function(ClientSecretBuilder)? updates]) =>
      (new ClientSecretBuilder()..update(updates))._build();

  _$ClientSecret._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'ClientSecret', 'anyOf');
  }

  @override
  ClientSecret rebuild(void Function(ClientSecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientSecretBuilder toBuilder() => new ClientSecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientSecret && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'ClientSecret')..add('anyOf', anyOf))
        .toString();
  }
}

class ClientSecretBuilder
    implements Builder<ClientSecret, ClientSecretBuilder> {
  _$ClientSecret? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ClientSecretBuilder() {
    ClientSecret._defaults(this);
  }

  ClientSecretBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientSecret other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientSecret;
  }

  @override
  void update(void Function(ClientSecretBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientSecret build() => _build();

  _$ClientSecret _build() {
    final _$result = _$v ??
        new _$ClientSecret._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'ClientSecret', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
