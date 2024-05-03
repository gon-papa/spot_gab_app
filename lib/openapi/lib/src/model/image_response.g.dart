// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageResponse extends ImageResponse {
  @override
  final int? status;
  @override
  final BuiltList<ImageResponseItem>? data;
  @override
  final Message? message;

  factory _$ImageResponse([void Function(ImageResponseBuilder)? updates]) =>
      (new ImageResponseBuilder()..update(updates))._build();

  _$ImageResponse._({this.status, this.data, this.message}) : super._();

  @override
  ImageResponse rebuild(void Function(ImageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageResponseBuilder toBuilder() => new ImageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageResponse &&
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
    return (newBuiltValueToStringHelper(r'ImageResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class ImageResponseBuilder
    implements Builder<ImageResponse, ImageResponseBuilder> {
  _$ImageResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<ImageResponseItem>? _data;
  ListBuilder<ImageResponseItem> get data =>
      _$this._data ??= new ListBuilder<ImageResponseItem>();
  set data(ListBuilder<ImageResponseItem>? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  ImageResponseBuilder() {
    ImageResponse._defaults(this);
  }

  ImageResponseBuilder get _$this {
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
  void replace(ImageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageResponse;
  }

  @override
  void update(void Function(ImageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageResponse build() => _build();

  _$ImageResponse _build() {
    _$ImageResponse _$result;
    try {
      _$result = _$v ??
          new _$ImageResponse._(
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
            r'ImageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
