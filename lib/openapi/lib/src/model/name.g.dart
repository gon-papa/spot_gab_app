// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Name extends Name {
  @override
  final AnyOf anyOf;

  factory _$Name([void Function(NameBuilder)? updates]) =>
      (new NameBuilder()..update(updates))._build();

  _$Name._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Name', 'anyOf');
  }

  @override
  Name rebuild(void Function(NameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NameBuilder toBuilder() => new NameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Name && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Name')..add('anyOf', anyOf))
        .toString();
  }
}

class NameBuilder implements Builder<Name, NameBuilder> {
  _$Name? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  NameBuilder() {
    Name._defaults(this);
  }

  NameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Name;
  }

  @override
  void update(void Function(NameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Name build() => _build();

  _$Name _build() {
    final _$result = _$v ??
        new _$Name._(
            anyOf:
                BuiltValueNullFieldError.checkNotNull(anyOf, r'Name', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
