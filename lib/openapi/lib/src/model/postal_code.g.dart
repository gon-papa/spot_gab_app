// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostalCode extends PostalCode {
  @override
  final AnyOf anyOf;

  factory _$PostalCode([void Function(PostalCodeBuilder)? updates]) =>
      (new PostalCodeBuilder()..update(updates))._build();

  _$PostalCode._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'PostalCode', 'anyOf');
  }

  @override
  PostalCode rebuild(void Function(PostalCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostalCodeBuilder toBuilder() => new PostalCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostalCode && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'PostalCode')..add('anyOf', anyOf))
        .toString();
  }
}

class PostalCodeBuilder implements Builder<PostalCode, PostalCodeBuilder> {
  _$PostalCode? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostalCodeBuilder() {
    PostalCode._defaults(this);
  }

  PostalCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostalCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostalCode;
  }

  @override
  void update(void Function(PostalCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostalCode build() => _build();

  _$PostalCode _build() {
    final _$result = _$v ??
        new _$PostalCode._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'PostalCode', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
