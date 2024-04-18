// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Files extends Files {
  @override
  final Id? id;
  @override
  final String? uuid;
  @override
  final String name;
  @override
  final String path;
  @override
  final bool isUsed;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Files([void Function(FilesBuilder)? updates]) =>
      (new FilesBuilder()..update(updates))._build();

  _$Files._(
      {this.id,
      this.uuid,
      required this.name,
      required this.path,
      required this.isUsed,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Files', 'name');
    BuiltValueNullFieldError.checkNotNull(path, r'Files', 'path');
    BuiltValueNullFieldError.checkNotNull(isUsed, r'Files', 'isUsed');
  }

  @override
  Files rebuild(void Function(FilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesBuilder toBuilder() => new FilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Files &&
        id == other.id &&
        uuid == other.uuid &&
        name == other.name &&
        path == other.path &&
        isUsed == other.isUsed &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, isUsed.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Files')
          ..add('id', id)
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('path', path)
          ..add('isUsed', isUsed)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class FilesBuilder implements Builder<Files, FilesBuilder> {
  _$Files? _$v;

  IdBuilder? _id;
  IdBuilder get id => _$this._id ??= new IdBuilder();
  set id(IdBuilder? id) => _$this._id = id;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  bool? _isUsed;
  bool? get isUsed => _$this._isUsed;
  set isUsed(bool? isUsed) => _$this._isUsed = isUsed;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  FilesBuilder() {
    Files._defaults(this);
  }

  FilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _uuid = $v.uuid;
      _name = $v.name;
      _path = $v.path;
      _isUsed = $v.isUsed;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Files;
  }

  @override
  void update(void Function(FilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Files build() => _build();

  _$Files _build() {
    _$Files _$result;
    try {
      _$result = _$v ??
          new _$Files._(
              id: _id?.build(),
              uuid: uuid,
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'Files', 'name'),
              path:
                  BuiltValueNullFieldError.checkNotNull(path, r'Files', 'path'),
              isUsed: BuiltValueNullFieldError.checkNotNull(
                  isUsed, r'Files', 'isUsed'),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Files', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
