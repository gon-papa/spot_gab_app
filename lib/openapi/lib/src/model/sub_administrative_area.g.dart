// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_administrative_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubAdministrativeArea extends SubAdministrativeArea {
  @override
  final AnyOf anyOf;

  factory _$SubAdministrativeArea(
          [void Function(SubAdministrativeAreaBuilder)? updates]) =>
      (new SubAdministrativeAreaBuilder()..update(updates))._build();

  _$SubAdministrativeArea._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'SubAdministrativeArea', 'anyOf');
  }

  @override
  SubAdministrativeArea rebuild(
          void Function(SubAdministrativeAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubAdministrativeAreaBuilder toBuilder() =>
      new SubAdministrativeAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubAdministrativeArea && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SubAdministrativeArea')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SubAdministrativeAreaBuilder
    implements Builder<SubAdministrativeArea, SubAdministrativeAreaBuilder> {
  _$SubAdministrativeArea? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SubAdministrativeAreaBuilder() {
    SubAdministrativeArea._defaults(this);
  }

  SubAdministrativeAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubAdministrativeArea other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubAdministrativeArea;
  }

  @override
  void update(void Function(SubAdministrativeAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubAdministrativeArea build() => _build();

  _$SubAdministrativeArea _build() {
    final _$result = _$v ??
        new _$SubAdministrativeArea._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SubAdministrativeArea', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
