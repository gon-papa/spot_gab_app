// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordRequest extends ResetPasswordRequest {
  @override
  final String email;

  factory _$ResetPasswordRequest(
          [void Function(ResetPasswordRequestBuilder)? updates]) =>
      (new ResetPasswordRequestBuilder()..update(updates))._build();

  _$ResetPasswordRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'ResetPasswordRequest', 'email');
  }

  @override
  ResetPasswordRequest rebuild(
          void Function(ResetPasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordRequestBuilder toBuilder() =>
      new ResetPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetPasswordRequest')
          ..add('email', email))
        .toString();
  }
}

class ResetPasswordRequestBuilder
    implements Builder<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  _$ResetPasswordRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ResetPasswordRequestBuilder() {
    ResetPasswordRequest._defaults(this);
  }

  ResetPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetPasswordRequest;
  }

  @override
  void update(void Function(ResetPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordRequest build() => _build();

  _$ResetPasswordRequest _build() {
    final _$result = _$v ??
        new _$ResetPasswordRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ResetPasswordRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
