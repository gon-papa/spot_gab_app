// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final String accountName;
  @override
  final String idAccount;
  @override
  final String email;
  @override
  final String password;
  @override
  final Date birthDate;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder)? updates]) =>
      (new SignUpRequestBuilder()..update(updates))._build();

  _$SignUpRequest._(
      {required this.accountName,
      required this.idAccount,
      required this.email,
      required this.password,
      required this.birthDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountName, r'SignUpRequest', 'accountName');
    BuiltValueNullFieldError.checkNotNull(
        idAccount, r'SignUpRequest', 'idAccount');
    BuiltValueNullFieldError.checkNotNull(email, r'SignUpRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SignUpRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'SignUpRequest', 'birthDate');
  }

  @override
  SignUpRequest rebuild(void Function(SignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpRequestBuilder toBuilder() => new SignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpRequest &&
        accountName == other.accountName &&
        idAccount == other.idAccount &&
        email == other.email &&
        password == other.password &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, idAccount.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpRequest')
          ..add('accountName', accountName)
          ..add('idAccount', idAccount)
          ..add('email', email)
          ..add('password', password)
          ..add('birthDate', birthDate))
        .toString();
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest? _$v;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _idAccount;
  String? get idAccount => _$this._idAccount;
  set idAccount(String? idAccount) => _$this._idAccount = idAccount;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Date? _birthDate;
  Date? get birthDate => _$this._birthDate;
  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  SignUpRequestBuilder() {
    SignUpRequest._defaults(this);
  }

  SignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountName = $v.accountName;
      _idAccount = $v.idAccount;
      _email = $v.email;
      _password = $v.password;
      _birthDate = $v.birthDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpRequest;
  }

  @override
  void update(void Function(SignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpRequest build() => _build();

  _$SignUpRequest _build() {
    final _$result = _$v ??
        new _$SignUpRequest._(
            accountName: BuiltValueNullFieldError.checkNotNull(
                accountName, r'SignUpRequest', 'accountName'),
            idAccount: BuiltValueNullFieldError.checkNotNull(
                idAccount, r'SignUpRequest', 'idAccount'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SignUpRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SignUpRequest', 'password'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'SignUpRequest', 'birthDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
