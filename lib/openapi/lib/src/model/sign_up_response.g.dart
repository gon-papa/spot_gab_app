// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpResponse extends SignUpResponse {
  @override
  final int? status;
  @override
  final SignUpResponseItem? data;
  @override
  final Message? message;

  factory _$SignUpResponse([void Function(SignUpResponseBuilder)? updates]) =>
      (new SignUpResponseBuilder()..update(updates))._build();

  _$SignUpResponse._({this.status, this.data, this.message}) : super._();

  @override
  SignUpResponse rebuild(void Function(SignUpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpResponseBuilder toBuilder() =>
      new SignUpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpResponse &&
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
    return (newBuiltValueToStringHelper(r'SignUpResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class SignUpResponseBuilder
    implements Builder<SignUpResponse, SignUpResponseBuilder> {
  _$SignUpResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  SignUpResponseItemBuilder? _data;
  SignUpResponseItemBuilder get data =>
      _$this._data ??= new SignUpResponseItemBuilder();
  set data(SignUpResponseItemBuilder? data) => _$this._data = data;

  MessageBuilder? _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder? message) => _$this._message = message;

  SignUpResponseBuilder() {
    SignUpResponse._defaults(this);
  }

  SignUpResponseBuilder get _$this {
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
  void replace(SignUpResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpResponse;
  }

  @override
  void update(void Function(SignUpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpResponse build() => _build();

  _$SignUpResponse _build() {
    _$SignUpResponse _$result;
    try {
      _$result = _$v ??
          new _$SignUpResponse._(
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
            r'SignUpResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
