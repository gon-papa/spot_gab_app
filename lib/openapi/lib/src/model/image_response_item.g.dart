// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageResponseItem extends ImageResponseItem {
  @override
  final String? uuid;
  @override
  final String? name;
  @override
  final String? path;

  factory _$ImageResponseItem(
          [void Function(ImageResponseItemBuilder)? updates]) =>
      (new ImageResponseItemBuilder()..update(updates))._build();

  _$ImageResponseItem._({this.uuid, this.name, this.path}) : super._();

  @override
  ImageResponseItem rebuild(void Function(ImageResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageResponseItemBuilder toBuilder() =>
      new ImageResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageResponseItem &&
        uuid == other.uuid &&
        name == other.name &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageResponseItem')
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('path', path))
        .toString();
  }
}

class ImageResponseItemBuilder
    implements Builder<ImageResponseItem, ImageResponseItemBuilder> {
  _$ImageResponseItem? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ImageResponseItemBuilder() {
    ImageResponseItem._defaults(this);
  }

  ImageResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _name = $v.name;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageResponseItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageResponseItem;
  }

  @override
  void update(void Function(ImageResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageResponseItem build() => _build();

  _$ImageResponseItem _build() {
    final _$result =
        _$v ?? new _$ImageResponseItem._(uuid: uuid, name: name, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
