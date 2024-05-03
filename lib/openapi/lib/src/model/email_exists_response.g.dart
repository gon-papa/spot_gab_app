// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_exists_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailExistsResponse extends EmailExistsResponse {
  @override
  final int? status;
  @override
  final EmailExistsResponseItem? data;
  @override
  final Message? message;

  factory _$EmailExistsResponse(
          [void Function(EmailExistsResponseBuilder)? updates]) =>
      (new EmailExistsResponseBuilder()..update(updates))._build();

  _$EmailExistsResponse._({this.status, this.data, this.message}) : super._();

  @override
  EmailExistsResponse rebuild(
          void Function(EmailExistsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailExistsResponseBuilder toBuilder() =>
      new EmailExistsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailExistsResponse &&
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
    return (newBuiltValueToStringHelper(r'EmailExistsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class EmailExistsResponseBuilder
    implements Builder<EmailExistsResponse, EmailExistsResponseBuilder> {
  _$EmailExistsResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  EmailExistsResponseItemBuilder? _data;
  EmailExistsResponseItemBuilder get data =>
      _$this._data ??= new EmailExistsResponseItemBuilder();
  set data(EmailExistsResponseItemBuilder? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  EmailExistsResponseBuilder() {
    EmailExistsResponse._defaults(this);
  }

  EmailExistsResponseBuilder get _$this {
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
  void replace(EmailExistsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailExistsResponse;
  }

  @override
  void update(void Function(EmailExistsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailExistsResponse build() => _build();

  _$EmailExistsResponse _build() {
    _$EmailExistsResponse _$result;
    try {
      _$result = _$v ??
          new _$EmailExistsResponse._(
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
            r'EmailExistsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
