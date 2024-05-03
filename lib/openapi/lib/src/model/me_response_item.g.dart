// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MeResponseItem extends MeResponseItem {
  @override
  final Me? user;

  factory _$MeResponseItem([void Function(MeResponseItemBuilder)? updates]) =>
      (new MeResponseItemBuilder()..update(updates))._build();

  _$MeResponseItem._({this.user}) : super._();

  @override
  MeResponseItem rebuild(void Function(MeResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeResponseItemBuilder toBuilder() =>
      new MeResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeResponseItem && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeResponseItem')..add('user', user))
        .toString();
  }
}

class MeResponseItemBuilder
    implements Builder<MeResponseItem, MeResponseItemBuilder> {
  _$MeResponseItem? _$v;

  MeBuilder? _user;
  MeBuilder get user => _$this._user ??= new MeBuilder();
  set user(MeBuilder? user) => _$this._user = user;

  MeResponseItemBuilder() {
    MeResponseItem._defaults(this);
  }

  MeResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeResponseItem;
  }

  @override
  void update(void Function(MeResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeResponseItem build() => _build();

  _$MeResponseItem _build() {
    _$MeResponseItem _$result;
    try {
      _$result = _$v ?? new _$MeResponseItem._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeResponseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
