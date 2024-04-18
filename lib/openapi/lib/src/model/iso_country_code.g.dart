// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iso_country_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IsoCountryCode extends IsoCountryCode {
  @override
  final AnyOf anyOf;

  factory _$IsoCountryCode([void Function(IsoCountryCodeBuilder)? updates]) =>
      (new IsoCountryCodeBuilder()..update(updates))._build();

  _$IsoCountryCode._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'IsoCountryCode', 'anyOf');
  }

  @override
  IsoCountryCode rebuild(void Function(IsoCountryCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IsoCountryCodeBuilder toBuilder() =>
      new IsoCountryCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IsoCountryCode && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'IsoCountryCode')..add('anyOf', anyOf))
        .toString();
  }
}

class IsoCountryCodeBuilder
    implements Builder<IsoCountryCode, IsoCountryCodeBuilder> {
  _$IsoCountryCode? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  IsoCountryCodeBuilder() {
    IsoCountryCode._defaults(this);
  }

  IsoCountryCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IsoCountryCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IsoCountryCode;
  }

  @override
  void update(void Function(IsoCountryCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IsoCountryCode build() => _build();

  _$IsoCountryCode _build() {
    final _$result = _$v ??
        new _$IsoCountryCode._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'IsoCountryCode', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
