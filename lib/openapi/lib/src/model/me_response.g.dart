// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MeResponse extends MeResponse {
  @override
  final int? status;
  @override
  final MeResponseItem? data;
  @override
  final Message? message;

  factory _$MeResponse([void Function(MeResponseBuilder)? updates]) =>
      (new MeResponseBuilder()..update(updates))._build();

  _$MeResponse._({this.status, this.data, this.message}) : super._();

  @override
  MeResponse rebuild(void Function(MeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeResponseBuilder toBuilder() => new MeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeResponse &&
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
    return (newBuiltValueToStringHelper(r'MeResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class MeResponseBuilder implements Builder<MeResponse, MeResponseBuilder> {
  _$MeResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  MeResponseItemBuilder? _data;
  MeResponseItemBuilder get data =>
      _$this._data ??= new MeResponseItemBuilder();
  set data(MeResponseItemBuilder? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  MeResponseBuilder() {
    MeResponse._defaults(this);
  }

  MeResponseBuilder get _$this {
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
  void replace(MeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeResponse;
  }

  @override
  void update(void Function(MeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeResponse build() => _build();

  _$MeResponse _build() {
    _$MeResponse _$result;
    try {
      _$result = _$v ??
          new _$MeResponse._(
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
            r'MeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
