// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Token extends Token {
  @override
  final AnyOf anyOf;

  factory _$Token([void Function(TokenBuilder)? updates]) =>
      (new TokenBuilder()..update(updates))._build();

  _$Token._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Token', 'anyOf');
  }

  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => new TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Token')..add('anyOf', anyOf))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder> {
  _$Token? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  TokenBuilder() {
    Token._defaults(this);
  }

  TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Token other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Token build() => _build();

  _$Token _build() {
    final _$result = _$v ??
        new _$Token._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'Token', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
