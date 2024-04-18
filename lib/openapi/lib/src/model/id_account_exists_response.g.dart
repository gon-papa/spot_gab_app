// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_account_exists_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdAccountExistsResponse extends IdAccountExistsResponse {
  @override
  final int? status;
  @override
  final IdAccountExistsResponseItem? data;
  @override
  final Message? message;

  factory _$IdAccountExistsResponse(
          [void Function(IdAccountExistsResponseBuilder)? updates]) =>
      (new IdAccountExistsResponseBuilder()..update(updates))._build();

  _$IdAccountExistsResponse._({this.status, this.data, this.message})
      : super._();

  @override
  IdAccountExistsResponse rebuild(
          void Function(IdAccountExistsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdAccountExistsResponseBuilder toBuilder() =>
      new IdAccountExistsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdAccountExistsResponse &&
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
    return (newBuiltValueToStringHelper(r'IdAccountExistsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class IdAccountExistsResponseBuilder
    implements
        Builder<IdAccountExistsResponse, IdAccountExistsResponseBuilder> {
  _$IdAccountExistsResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  IdAccountExistsResponseItemBuilder? _data;
  IdAccountExistsResponseItemBuilder get data =>
      _$this._data ??= new IdAccountExistsResponseItemBuilder();
  set data(IdAccountExistsResponseItemBuilder? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  IdAccountExistsResponseBuilder() {
    IdAccountExistsResponse._defaults(this);
  }

  IdAccountExistsResponseBuilder get _$this {
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
  void replace(IdAccountExistsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdAccountExistsResponse;
  }

  @override
  void update(void Function(IdAccountExistsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdAccountExistsResponse build() => _build();

  _$IdAccountExistsResponse _build() {
    _$IdAccountExistsResponse _$result;
    try {
      _$result = _$v ??
          new _$IdAccountExistsResponse._(
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
            r'IdAccountExistsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
