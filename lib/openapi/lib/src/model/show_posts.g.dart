// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_posts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowPosts extends ShowPosts {
  @override
  final String uuid;
  @override
  final String body;
  @override
  final DateTime createdAt;

  factory _$ShowPosts([void Function(ShowPostsBuilder)? updates]) =>
      (new ShowPostsBuilder()..update(updates))._build();

  _$ShowPosts._(
      {required this.uuid, required this.body, required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uuid, r'ShowPosts', 'uuid');
    BuiltValueNullFieldError.checkNotNull(body, r'ShowPosts', 'body');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'ShowPosts', 'createdAt');
  }

  @override
  ShowPosts rebuild(void Function(ShowPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowPostsBuilder toBuilder() => new ShowPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowPosts &&
        uuid == other.uuid &&
        body == other.body &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowPosts')
          ..add('uuid', uuid)
          ..add('body', body)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ShowPostsBuilder implements Builder<ShowPosts, ShowPostsBuilder> {
  _$ShowPosts? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ShowPostsBuilder() {
    ShowPosts._defaults(this);
  }

  ShowPostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _body = $v.body;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowPosts;
  }

  @override
  void update(void Function(ShowPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowPosts build() => _build();

  _$ShowPosts _build() {
    final _$result = _$v ??
        new _$ShowPosts._(
            uuid: BuiltValueNullFieldError.checkNotNull(
                uuid, r'ShowPosts', 'uuid'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'ShowPosts', 'body'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ShowPosts', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
