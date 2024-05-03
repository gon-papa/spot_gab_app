// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_at.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatedAt extends UpdatedAt {
  @override
  final AnyOf anyOf;

  factory _$UpdatedAt([void Function(UpdatedAtBuilder)? updates]) =>
      (new UpdatedAtBuilder()..update(updates))._build();

  _$UpdatedAt._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'UpdatedAt', 'anyOf');
  }

  @override
  UpdatedAt rebuild(void Function(UpdatedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedAtBuilder toBuilder() => new UpdatedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedAt && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'UpdatedAt')..add('anyOf', anyOf))
        .toString();
  }
}

class UpdatedAtBuilder implements Builder<UpdatedAt, UpdatedAtBuilder> {
  _$UpdatedAt? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  UpdatedAtBuilder() {
    UpdatedAt._defaults(this);
  }

  UpdatedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatedAt;
  }

  @override
  void update(void Function(UpdatedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatedAt build() => _build();

  _$UpdatedAt _build() {
    final _$result = _$v ??
        new _$UpdatedAt._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'UpdatedAt', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
