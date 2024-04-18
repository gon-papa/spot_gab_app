// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GrantType extends GrantType {
  @override
  final AnyOf anyOf;

  factory _$GrantType([void Function(GrantTypeBuilder)? updates]) =>
      (new GrantTypeBuilder()..update(updates))._build();

  _$GrantType._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'GrantType', 'anyOf');
  }

  @override
  GrantType rebuild(void Function(GrantTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantTypeBuilder toBuilder() => new GrantTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantType && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'GrantType')..add('anyOf', anyOf))
        .toString();
  }
}

class GrantTypeBuilder implements Builder<GrantType, GrantTypeBuilder> {
  _$GrantType? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  GrantTypeBuilder() {
    GrantType._defaults(this);
  }

  GrantTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrantType;
  }

  @override
  void update(void Function(GrantTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantType build() => _build();

  _$GrantType _build() {
    final _$result = _$v ??
        new _$GrantType._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'GrantType', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
