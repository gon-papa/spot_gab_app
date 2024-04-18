// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_locality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubLocality extends SubLocality {
  @override
  final AnyOf anyOf;

  factory _$SubLocality([void Function(SubLocalityBuilder)? updates]) =>
      (new SubLocalityBuilder()..update(updates))._build();

  _$SubLocality._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'SubLocality', 'anyOf');
  }

  @override
  SubLocality rebuild(void Function(SubLocalityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubLocalityBuilder toBuilder() => new SubLocalityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubLocality && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SubLocality')..add('anyOf', anyOf))
        .toString();
  }
}

class SubLocalityBuilder implements Builder<SubLocality, SubLocalityBuilder> {
  _$SubLocality? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SubLocalityBuilder() {
    SubLocality._defaults(this);
  }

  SubLocalityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubLocality other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubLocality;
  }

  @override
  void update(void Function(SubLocalityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubLocality build() => _build();

  _$SubLocality _build() {
    final _$result = _$v ??
        new _$SubLocality._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SubLocality', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
