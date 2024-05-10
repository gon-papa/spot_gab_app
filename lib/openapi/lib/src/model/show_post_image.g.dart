// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_post_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowPostImage extends ShowPostImage {
  @override
  final String imagePath;
  @override
  final DateTime createdAt;

  factory _$ShowPostImage([void Function(ShowPostImageBuilder)? updates]) =>
      (new ShowPostImageBuilder()..update(updates))._build();

  _$ShowPostImage._({required this.imagePath, required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imagePath, r'ShowPostImage', 'imagePath');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ShowPostImage', 'createdAt');
  }

  @override
  ShowPostImage rebuild(void Function(ShowPostImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowPostImageBuilder toBuilder() => new ShowPostImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowPostImage &&
        imagePath == other.imagePath &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowPostImage')
          ..add('imagePath', imagePath)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ShowPostImageBuilder
    implements Builder<ShowPostImage, ShowPostImageBuilder> {
  _$ShowPostImage? _$v;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ShowPostImageBuilder() {
    ShowPostImage._defaults(this);
  }

  ShowPostImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagePath = $v.imagePath;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowPostImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowPostImage;
  }

  @override
  void update(void Function(ShowPostImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowPostImage build() => _build();

  _$ShowPostImage _build() {
    final _$result = _$v ??
        new _$ShowPostImage._(
            imagePath: BuiltValueNullFieldError.checkNotNull(
                imagePath, r'ShowPostImage', 'imagePath'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ShowPostImage', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
