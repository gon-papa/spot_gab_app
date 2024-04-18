// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_exists_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailExistsResponseItem extends EmailExistsResponseItem {
  @override
  final bool? exists;

  factory _$EmailExistsResponseItem(
          [void Function(EmailExistsResponseItemBuilder)? updates]) =>
      (new EmailExistsResponseItemBuilder()..update(updates))._build();

  _$EmailExistsResponseItem._({this.exists}) : super._();

  @override
  EmailExistsResponseItem rebuild(
          void Function(EmailExistsResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailExistsResponseItemBuilder toBuilder() =>
      new EmailExistsResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailExistsResponseItem && exists == other.exists;
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
    return (newBuiltValueToStringHelper(r'EmailExistsResponseItem')
          ..add('exists', exists))
        .toString();
  }
}

class EmailExistsResponseItemBuilder
    implements
        Builder<EmailExistsResponseItem, EmailExistsResponseItemBuilder> {
  _$EmailExistsResponseItem? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  EmailExistsResponseItemBuilder() {
    EmailExistsResponseItem._defaults(this);
  }

  EmailExistsResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailExistsResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailExistsResponseItem;
  }

  @override
  void update(void Function(EmailExistsResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailExistsResponseItem build() => _build();

  _$EmailExistsResponseItem _build() {
    final _$result = _$v ?? new _$EmailExistsResponseItem._(exists: exists);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
