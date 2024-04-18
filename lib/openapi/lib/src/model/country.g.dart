// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Country extends Country {
  @override
  final AnyOf anyOf;

  factory _$Country([void Function(CountryBuilder)? updates]) =>
      (new CountryBuilder()..update(updates))._build();

  _$Country._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Country', 'anyOf');
  }

  @override
  Country rebuild(void Function(CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Country')..add('anyOf', anyOf))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  CountryBuilder() {
    Country._defaults(this);
  }

  CountryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Country;
  }

  @override
  void update(void Function(CountryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Country build() => _build();

  _$Country _build() {
    final _$result = _$v ??
        new _$Country._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'Country', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
