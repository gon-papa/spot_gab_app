// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageId extends ImageId {
  @override
  final AnyOf anyOf;

  factory _$ImageId([void Function(ImageIdBuilder)? updates]) =>
      (new ImageIdBuilder()..update(updates))._build();

  _$ImageId._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'ImageId', 'anyOf');
  }

  @override
  ImageId rebuild(void Function(ImageIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageIdBuilder toBuilder() => new ImageIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageId && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageId')..add('anyOf', anyOf))
        .toString();
  }
}

class ImageIdBuilder implements Builder<ImageId, ImageIdBuilder> {
  _$ImageId? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ImageIdBuilder() {
    ImageId._defaults(this);
  }

  ImageIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageId;
  }

  @override
  void update(void Function(ImageIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageId build() => _build();

  _$ImageId _build() {
    final _$result = _$v ??
        new _$ImageId._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'ImageId', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
