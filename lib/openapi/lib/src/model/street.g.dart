// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Street extends Street {
  @override
  final AnyOf anyOf;

  factory _$Street([void Function(StreetBuilder)? updates]) =>
      (new StreetBuilder()..update(updates))._build();

  _$Street._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Street', 'anyOf');
  }

  @override
  Street rebuild(void Function(StreetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetBuilder toBuilder() => new StreetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Street && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Street')..add('anyOf', anyOf))
        .toString();
  }
}

class StreetBuilder implements Builder<Street, StreetBuilder> {
  _$Street? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  StreetBuilder() {
    Street._defaults(this);
  }

  StreetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Street other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Street;
  }

  @override
  void update(void Function(StreetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Street build() => _build();

  _$Street _build() {
    final _$result = _$v ??
        new _$Street._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'Street', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
