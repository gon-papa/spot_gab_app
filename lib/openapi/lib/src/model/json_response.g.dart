// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonResponse extends JsonResponse {
  @override
  final int? status;
  @override
  final JsonObject? data;
  @override
  final Message? message;

  factory _$JsonResponse([void Function(JsonResponseBuilder)? updates]) =>
      (new JsonResponseBuilder()..update(updates))._build();

  _$JsonResponse._({this.status, this.data, this.message}) : super._();

  @override
  JsonResponse rebuild(void Function(JsonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonResponseBuilder toBuilder() => new JsonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonResponse &&
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
    return (newBuiltValueToStringHelper(r'JsonResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class JsonResponseBuilder
    implements Builder<JsonResponse, JsonResponseBuilder> {
  _$JsonResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  JsonResponseBuilder() {
    JsonResponse._defaults(this);
  }

  JsonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data;
      _message = $v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonResponse;
  }

  @override
  void update(void Function(JsonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonResponse build() => _build();

  _$JsonResponse _build() {
    _$JsonResponse _$result;
    try {
      _$result = _$v ??
          new _$JsonResponse._(
              status: status, data: data, message: _message?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
