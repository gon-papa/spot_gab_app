// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_json_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorJsonResponse extends ErrorJsonResponse {
  @override
  final BuiltList<ErrorDetail> detail;

  factory _$ErrorJsonResponse(
          [void Function(ErrorJsonResponseBuilder)? updates]) =>
      (new ErrorJsonResponseBuilder()..update(updates))._build();

  _$ErrorJsonResponse._({required this.detail}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        detail, r'ErrorJsonResponse', 'detail');
  }

  @override
  ErrorJsonResponse rebuild(void Function(ErrorJsonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorJsonResponseBuilder toBuilder() =>
      new ErrorJsonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorJsonResponse && detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorJsonResponse')
          ..add('detail', detail))
        .toString();
  }
}

class ErrorJsonResponseBuilder
    implements Builder<ErrorJsonResponse, ErrorJsonResponseBuilder> {
  _$ErrorJsonResponse? _$v;

  ListBuilder<ErrorDetail>? _detail;
  ListBuilder<ErrorDetail> get detail =>
      _$this._detail ??= new ListBuilder<ErrorDetail>();
  set detail(ListBuilder<ErrorDetail>? detail) => _$this._detail = detail;

  ErrorJsonResponseBuilder() {
    ErrorJsonResponse._defaults(this);
  }

  ErrorJsonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detail = $v.detail.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorJsonResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorJsonResponse;
  }

  @override
  void update(void Function(ErrorJsonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorJsonResponse build() => _build();

  _$ErrorJsonResponse _build() {
    _$ErrorJsonResponse _$result;
    try {
      _$result = _$v ?? new _$ErrorJsonResponse._(detail: detail.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detail';
        detail.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ErrorJsonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
