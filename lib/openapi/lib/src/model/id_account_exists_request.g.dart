// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_account_exists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdAccountExistsRequest extends IdAccountExistsRequest {
  @override
  final String idAccount;

  factory _$IdAccountExistsRequest(
          [void Function(IdAccountExistsRequestBuilder)? updates]) =>
      (new IdAccountExistsRequestBuilder()..update(updates))._build();

  _$IdAccountExistsRequest._({required this.idAccount}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        idAccount, r'IdAccountExistsRequest', 'idAccount');
  }

  @override
  IdAccountExistsRequest rebuild(
          void Function(IdAccountExistsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdAccountExistsRequestBuilder toBuilder() =>
      new IdAccountExistsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdAccountExistsRequest && idAccount == other.idAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdAccountExistsRequest')
          ..add('idAccount', idAccount))
        .toString();
  }
}

class IdAccountExistsRequestBuilder
    implements Builder<IdAccountExistsRequest, IdAccountExistsRequestBuilder> {
  _$IdAccountExistsRequest? _$v;

  String? _idAccount;
  String? get idAccount => _$this._idAccount;
  set idAccount(String? idAccount) => _$this._idAccount = idAccount;

  IdAccountExistsRequestBuilder() {
    IdAccountExistsRequest._defaults(this);
  }

  IdAccountExistsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idAccount = $v.idAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdAccountExistsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdAccountExistsRequest;
  }

  @override
  void update(void Function(IdAccountExistsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdAccountExistsRequest build() => _build();

  _$IdAccountExistsRequest _build() {
    final _$result = _$v ??
        new _$IdAccountExistsRequest._(
            idAccount: BuiltValueNullFieldError.checkNotNull(
                idAccount, r'IdAccountExistsRequest', 'idAccount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
