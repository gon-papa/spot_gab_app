// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleted_at.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletedAt extends DeletedAt {
  @override
  final AnyOf anyOf;

  factory _$DeletedAt([void Function(DeletedAtBuilder)? updates]) =>
      (new DeletedAtBuilder()..update(updates))._build();

  _$DeletedAt._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'DeletedAt', 'anyOf');
  }

  @override
  DeletedAt rebuild(void Function(DeletedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletedAtBuilder toBuilder() => new DeletedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletedAt && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'DeletedAt')..add('anyOf', anyOf))
        .toString();
  }
}

class DeletedAtBuilder implements Builder<DeletedAt, DeletedAtBuilder> {
  _$DeletedAt? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  DeletedAtBuilder() {
    DeletedAt._defaults(this);
  }

  DeletedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletedAt;
  }

  @override
  void update(void Function(DeletedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletedAt build() => _build();

  _$DeletedAt _build() {
    final _$result = _$v ??
        new _$DeletedAt._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'DeletedAt', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
