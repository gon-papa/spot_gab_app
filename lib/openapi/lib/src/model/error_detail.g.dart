// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorDetail extends ErrorDetail {
  @override
  final BuiltList<String> loc;
  @override
  final String msg;
  @override
  final String type;

  factory _$ErrorDetail([void Function(ErrorDetailBuilder)? updates]) =>
      (new ErrorDetailBuilder()..update(updates))._build();

  _$ErrorDetail._({required this.loc, required this.msg, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(loc, r'ErrorDetail', 'loc');
    BuiltValueNullFieldError.checkNotNull(msg, r'ErrorDetail', 'msg');
    BuiltValueNullFieldError.checkNotNull(type, r'ErrorDetail', 'type');
  }

  @override
  ErrorDetail rebuild(void Function(ErrorDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDetailBuilder toBuilder() => new ErrorDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDetail &&
        loc == other.loc &&
        msg == other.msg &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loc.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorDetail')
          ..add('loc', loc)
          ..add('msg', msg)
          ..add('type', type))
        .toString();
  }
}

class ErrorDetailBuilder implements Builder<ErrorDetail, ErrorDetailBuilder> {
  _$ErrorDetail? _$v;

  ListBuilder<String>? _loc;
  ListBuilder<String> get loc => _$this._loc ??= new ListBuilder<String>();
  set loc(ListBuilder<String>? loc) => _$this._loc = loc;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ErrorDetailBuilder() {
    ErrorDetail._defaults(this);
  }

  ErrorDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loc = $v.loc.toBuilder();
      _msg = $v.msg;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorDetail;
  }

  @override
  void update(void Function(ErrorDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorDetail build() => _build();

  _$ErrorDetail _build() {
    _$ErrorDetail _$result;
    try {
      _$result = _$v ??
          new _$ErrorDetail._(
              loc: loc.build(),
              msg: BuiltValueNullFieldError.checkNotNull(
                  msg, r'ErrorDetail', 'msg'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ErrorDetail', 'type'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loc';
        loc.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ErrorDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
