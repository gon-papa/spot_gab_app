// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrative_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdministrativeArea extends AdministrativeArea {
  @override
  final AnyOf anyOf;

  factory _$AdministrativeArea(
          [void Function(AdministrativeAreaBuilder)? updates]) =>
      (new AdministrativeAreaBuilder()..update(updates))._build();

  _$AdministrativeArea._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'AdministrativeArea', 'anyOf');
  }

  @override
  AdministrativeArea rebuild(
          void Function(AdministrativeAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdministrativeAreaBuilder toBuilder() =>
      new AdministrativeAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdministrativeArea && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'AdministrativeArea')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class AdministrativeAreaBuilder
    implements Builder<AdministrativeArea, AdministrativeAreaBuilder> {
  _$AdministrativeArea? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  AdministrativeAreaBuilder() {
    AdministrativeArea._defaults(this);
  }

  AdministrativeAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdministrativeArea other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdministrativeArea;
  }

  @override
  void update(void Function(AdministrativeAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdministrativeArea build() => _build();

  _$AdministrativeArea _build() {
    final _$result = _$v ??
        new _$AdministrativeArea._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'AdministrativeArea', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
