// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpResponseItem extends SignUpResponseItem {
  @override
  final AuthenticatedUser? user;

  factory _$SignUpResponseItem(
          [void Function(SignUpResponseItemBuilder)? updates]) =>
      (new SignUpResponseItemBuilder()..update(updates))._build();

  _$SignUpResponseItem._({this.user}) : super._();

  @override
  SignUpResponseItem rebuild(
          void Function(SignUpResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpResponseItemBuilder toBuilder() =>
      new SignUpResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpResponseItem && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpResponseItem')
          ..add('user', user))
        .toString();
  }
}

class SignUpResponseItemBuilder
    implements Builder<SignUpResponseItem, SignUpResponseItemBuilder> {
  _$SignUpResponseItem? _$v;

  AuthenticatedUserBuilder? _user;
  AuthenticatedUserBuilder get user =>
      _$this._user ??= new AuthenticatedUserBuilder();
  set user(AuthenticatedUserBuilder? user) => _$this._user = user;

  SignUpResponseItemBuilder() {
    SignUpResponseItem._defaults(this);
  }

  SignUpResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpResponseItem;
  }

  @override
  void update(void Function(SignUpResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpResponseItem build() => _build();

  _$SignUpResponseItem _build() {
    _$SignUpResponseItem _$result;
    try {
      _$result = _$v ?? new _$SignUpResponseItem._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SignUpResponseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
