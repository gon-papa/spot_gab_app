// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_user_invitation_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OtherUserInvitationCode extends OtherUserInvitationCode {
  @override
  final AnyOf anyOf;

  factory _$OtherUserInvitationCode(
          [void Function(OtherUserInvitationCodeBuilder)? updates]) =>
      (new OtherUserInvitationCodeBuilder()..update(updates))._build();

  _$OtherUserInvitationCode._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'OtherUserInvitationCode', 'anyOf');
  }

  @override
  OtherUserInvitationCode rebuild(
          void Function(OtherUserInvitationCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtherUserInvitationCodeBuilder toBuilder() =>
      new OtherUserInvitationCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtherUserInvitationCode && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'OtherUserInvitationCode')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class OtherUserInvitationCodeBuilder
    implements
        Builder<OtherUserInvitationCode, OtherUserInvitationCodeBuilder> {
  _$OtherUserInvitationCode? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  OtherUserInvitationCodeBuilder() {
    OtherUserInvitationCode._defaults(this);
  }

  OtherUserInvitationCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherUserInvitationCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OtherUserInvitationCode;
  }

  @override
  void update(void Function(OtherUserInvitationCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OtherUserInvitationCode build() => _build();

  _$OtherUserInvitationCode _build() {
    final _$result = _$v ??
        new _$OtherUserInvitationCode._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'OtherUserInvitationCode', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
