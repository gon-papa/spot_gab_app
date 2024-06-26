// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostResponse extends PostResponse {
  @override
  final int? status;
  @override
  final BuiltList<PostResponseItem>? data;
  @override
  final Message? message;

  factory _$PostResponse([void Function(PostResponseBuilder)? updates]) =>
      (new PostResponseBuilder()..update(updates))._build();

  _$PostResponse._({this.status, this.data, this.message}) : super._();

  @override
  PostResponse rebuild(void Function(PostResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostResponseBuilder toBuilder() => new PostResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostResponse &&
        status == other.status &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class PostResponseBuilder
    implements Builder<PostResponse, PostResponseBuilder> {
  _$PostResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<PostResponseItem>? _data;
  ListBuilder<PostResponseItem> get data =>
      _$this._data ??= new ListBuilder<PostResponseItem>();
  set data(ListBuilder<PostResponseItem>? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  PostResponseBuilder() {
    PostResponse._defaults(this);
  }

  PostResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _message = $v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostResponse;
  }

  @override
  void update(void Function(PostResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostResponse build() => _build();

  _$PostResponse _build() {
    _$PostResponse _$result;
    try {
      _$result = _$v ??
          new _$PostResponse._(
              status: status, data: _data?.build(), message: _message?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
