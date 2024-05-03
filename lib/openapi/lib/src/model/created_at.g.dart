// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_at.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatedAt extends CreatedAt {
  @override
  final AnyOf anyOf;

  factory _$CreatedAt([void Function(CreatedAtBuilder)? updates]) =>
      (new CreatedAtBuilder()..update(updates))._build();

  _$CreatedAt._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'CreatedAt', 'anyOf');
  }

  @override
  CreatedAt rebuild(void Function(CreatedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedAtBuilder toBuilder() => new CreatedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedAt && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'CreatedAt')..add('anyOf', anyOf))
        .toString();
  }
}

class CreatedAtBuilder implements Builder<CreatedAt, CreatedAtBuilder> {
  _$CreatedAt? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  CreatedAtBuilder() {
    CreatedAt._defaults(this);
  }

  CreatedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatedAt;
  }

  @override
  void update(void Function(CreatedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatedAt build() => _build();

  _$CreatedAt _build() {
    final _$result = _$v ??
        new _$CreatedAt._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'CreatedAt', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
