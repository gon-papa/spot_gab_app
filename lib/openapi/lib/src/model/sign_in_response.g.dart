// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignInResponse extends SignInResponse {
  @override
  final String accessToken;
  @override
  final String? tokenType;
  @override
  final String refreshToken;

  factory _$SignInResponse([void Function(SignInResponseBuilder)? updates]) =>
      (new SignInResponseBuilder()..update(updates))._build();

  _$SignInResponse._(
      {required this.accessToken, this.tokenType, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'SignInResponse', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'SignInResponse', 'refreshToken');
  }

  @override
  SignInResponse rebuild(void Function(SignInResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInResponseBuilder toBuilder() =>
      new SignInResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInResponse &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignInResponse')
          ..add('accessToken', accessToken)
          ..add('tokenType', tokenType)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class SignInResponseBuilder
    implements Builder<SignInResponse, SignInResponseBuilder> {
  _$SignInResponse? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  SignInResponseBuilder() {
    SignInResponse._defaults(this);
  }

  SignInResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _tokenType = $v.tokenType;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInResponse;
  }

  @override
  void update(void Function(SignInResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInResponse build() => _build();

  _$SignInResponse _build() {
    final _$result = _$v ??
        new _$SignInResponse._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'SignInResponse', 'accessToken'),
            tokenType: tokenType,
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'SignInResponse', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
