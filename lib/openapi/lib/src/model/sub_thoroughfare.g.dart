// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_thoroughfare.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubThoroughfare extends SubThoroughfare {
  @override
  final AnyOf anyOf;

  factory _$SubThoroughfare([void Function(SubThoroughfareBuilder)? updates]) =>
      (new SubThoroughfareBuilder()..update(updates))._build();

  _$SubThoroughfare._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'SubThoroughfare', 'anyOf');
  }

  @override
  SubThoroughfare rebuild(void Function(SubThoroughfareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubThoroughfareBuilder toBuilder() =>
      new SubThoroughfareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubThoroughfare && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SubThoroughfare')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SubThoroughfareBuilder
    implements Builder<SubThoroughfare, SubThoroughfareBuilder> {
  _$SubThoroughfare? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SubThoroughfareBuilder() {
    SubThoroughfare._defaults(this);
  }

  SubThoroughfareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubThoroughfare other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubThoroughfare;
  }

  @override
  void update(void Function(SubThoroughfareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubThoroughfare build() => _build();

  _$SubThoroughfare _build() {
    final _$result = _$v ??
        new _$SubThoroughfare._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SubThoroughfare', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
