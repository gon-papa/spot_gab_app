// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Link extends Link {
  @override
  final AnyOf anyOf;

  factory _$Link([void Function(LinkBuilder)? updates]) =>
      (new LinkBuilder()..update(updates))._build();

  _$Link._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Link', 'anyOf');
  }

  @override
  Link rebuild(void Function(LinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkBuilder toBuilder() => new LinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Link && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Link')..add('anyOf', anyOf))
        .toString();
  }
}

class LinkBuilder implements Builder<Link, LinkBuilder> {
  _$Link? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  LinkBuilder() {
    Link._defaults(this);
  }

  LinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Link other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Link;
  }

  @override
  void update(void Function(LinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Link build() => _build();

  _$Link _build() {
    final _$result = _$v ??
        new _$Link._(
            anyOf:
                BuiltValueNullFieldError.checkNotNull(anyOf, r'Link', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
