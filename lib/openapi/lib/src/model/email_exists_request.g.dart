// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_exists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailExistsRequest extends EmailExistsRequest {
  @override
  final String email;

  factory _$EmailExistsRequest(
          [void Function(EmailExistsRequestBuilder)? updates]) =>
      (new EmailExistsRequestBuilder()..update(updates))._build();

  _$EmailExistsRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'EmailExistsRequest', 'email');
  }

  @override
  EmailExistsRequest rebuild(
          void Function(EmailExistsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailExistsRequestBuilder toBuilder() =>
      new EmailExistsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailExistsRequest && email == other.email;
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
    return (newBuiltValueToStringHelper(r'EmailExistsRequest')
          ..add('email', email))
        .toString();
  }
}

class EmailExistsRequestBuilder
    implements Builder<EmailExistsRequest, EmailExistsRequestBuilder> {
  _$EmailExistsRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  EmailExistsRequestBuilder() {
    EmailExistsRequest._defaults(this);
  }

  EmailExistsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailExistsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailExistsRequest;
  }

  @override
  void update(void Function(EmailExistsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailExistsRequest build() => _build();

  _$EmailExistsRequest _build() {
    final _$result = _$v ??
        new _$EmailExistsRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'EmailExistsRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
