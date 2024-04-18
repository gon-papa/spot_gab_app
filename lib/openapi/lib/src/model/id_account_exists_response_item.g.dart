// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_account_exists_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdAccountExistsResponseItem extends IdAccountExistsResponseItem {
  @override
  final bool? exists;

  factory _$IdAccountExistsResponseItem(
          [void Function(IdAccountExistsResponseItemBuilder)? updates]) =>
      (new IdAccountExistsResponseItemBuilder()..update(updates))._build();

  _$IdAccountExistsResponseItem._({this.exists}) : super._();

  @override
  IdAccountExistsResponseItem rebuild(
          void Function(IdAccountExistsResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdAccountExistsResponseItemBuilder toBuilder() =>
      new IdAccountExistsResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdAccountExistsResponseItem && exists == other.exists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdAccountExistsResponseItem')
          ..add('exists', exists))
        .toString();
  }
}

class IdAccountExistsResponseItemBuilder
    implements
        Builder<IdAccountExistsResponseItem,
            IdAccountExistsResponseItemBuilder> {
  _$IdAccountExistsResponseItem? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  IdAccountExistsResponseItemBuilder() {
    IdAccountExistsResponseItem._defaults(this);
  }

  IdAccountExistsResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdAccountExistsResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdAccountExistsResponseItem;
  }

  @override
  void update(void Function(IdAccountExistsResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdAccountExistsResponseItem build() => _build();

  _$IdAccountExistsResponseItem _build() {
    final _$result = _$v ?? new _$IdAccountExistsResponseItem._(exists: exists);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
