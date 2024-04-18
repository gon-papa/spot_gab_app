// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thoroughfare.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Thoroughfare extends Thoroughfare {
  @override
  final AnyOf anyOf;

  factory _$Thoroughfare([void Function(ThoroughfareBuilder)? updates]) =>
      (new ThoroughfareBuilder()..update(updates))._build();

  _$Thoroughfare._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Thoroughfare', 'anyOf');
  }

  @override
  Thoroughfare rebuild(void Function(ThoroughfareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThoroughfareBuilder toBuilder() => new ThoroughfareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thoroughfare && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Thoroughfare')..add('anyOf', anyOf))
        .toString();
  }
}

class ThoroughfareBuilder
    implements Builder<Thoroughfare, ThoroughfareBuilder> {
  _$Thoroughfare? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ThoroughfareBuilder() {
    Thoroughfare._defaults(this);
  }

  ThoroughfareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thoroughfare other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Thoroughfare;
  }

  @override
  void update(void Function(ThoroughfareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Thoroughfare build() => _build();

  _$Thoroughfare _build() {
    final _$result = _$v ??
        new _$Thoroughfare._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'Thoroughfare', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
