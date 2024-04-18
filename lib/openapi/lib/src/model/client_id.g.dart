// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientId extends ClientId {
  @override
  final AnyOf anyOf;

  factory _$ClientId([void Function(ClientIdBuilder)? updates]) =>
      (new ClientIdBuilder()..update(updates))._build();

  _$ClientId._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'ClientId', 'anyOf');
  }

  @override
  ClientId rebuild(void Function(ClientIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientIdBuilder toBuilder() => new ClientIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientId && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'ClientId')..add('anyOf', anyOf))
        .toString();
  }
}

class ClientIdBuilder implements Builder<ClientId, ClientIdBuilder> {
  _$ClientId? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ClientIdBuilder() {
    ClientId._defaults(this);
  }

  ClientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientId;
  }

  @override
  void update(void Function(ClientIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientId build() => _build();

  _$ClientId _build() {
    final _$result = _$v ??
        new _$ClientId._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'ClientId', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
