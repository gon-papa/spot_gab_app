// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowLocation extends ShowLocation {
  @override
  final String? uuid;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String geoHash;
  @override
  final String srid;
  @override
  final DateTime saveDatetime;

  factory _$ShowLocation([void Function(ShowLocationBuilder)? updates]) =>
      (new ShowLocationBuilder()..update(updates))._build();

  _$ShowLocation._(
      {this.uuid,
      required this.lat,
      required this.lng,
      required this.geoHash,
      required this.srid,
      required this.saveDatetime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'ShowLocation', 'lat');
    BuiltValueNullFieldError.checkNotNull(lng, r'ShowLocation', 'lng');
    BuiltValueNullFieldError.checkNotNull(geoHash, r'ShowLocation', 'geoHash');
    BuiltValueNullFieldError.checkNotNull(srid, r'ShowLocation', 'srid');
    BuiltValueNullFieldError.checkNotNull(
        saveDatetime, r'ShowLocation', 'saveDatetime');
  }

  @override
  ShowLocation rebuild(void Function(ShowLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowLocationBuilder toBuilder() => new ShowLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowLocation &&
        uuid == other.uuid &&
        lat == other.lat &&
        lng == other.lng &&
        geoHash == other.geoHash &&
        srid == other.srid &&
        saveDatetime == other.saveDatetime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, geoHash.hashCode);
    _$hash = $jc(_$hash, srid.hashCode);
    _$hash = $jc(_$hash, saveDatetime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowLocation')
          ..add('uuid', uuid)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('geoHash', geoHash)
          ..add('srid', srid)
          ..add('saveDatetime', saveDatetime))
        .toString();
  }
}

class ShowLocationBuilder
    implements Builder<ShowLocation, ShowLocationBuilder> {
  _$ShowLocation? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  String? _geoHash;
  String? get geoHash => _$this._geoHash;
  set geoHash(String? geoHash) => _$this._geoHash = geoHash;

  String? _srid;
  String? get srid => _$this._srid;
  set srid(String? srid) => _$this._srid = srid;

  DateTime? _saveDatetime;
  DateTime? get saveDatetime => _$this._saveDatetime;
  set saveDatetime(DateTime? saveDatetime) =>
      _$this._saveDatetime = saveDatetime;

  ShowLocationBuilder() {
    ShowLocation._defaults(this);
  }

  ShowLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _lat = $v.lat;
      _lng = $v.lng;
      _geoHash = $v.geoHash;
      _srid = $v.srid;
      _saveDatetime = $v.saveDatetime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowLocation;
  }

  @override
  void update(void Function(ShowLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowLocation build() => _build();

  _$ShowLocation _build() {
    final _$result = _$v ??
        new _$ShowLocation._(
            uuid: uuid,
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'ShowLocation', 'lat'),
            lng: BuiltValueNullFieldError.checkNotNull(
                lng, r'ShowLocation', 'lng'),
            geoHash: BuiltValueNullFieldError.checkNotNull(
                geoHash, r'ShowLocation', 'geoHash'),
            srid: BuiltValueNullFieldError.checkNotNull(
                srid, r'ShowLocation', 'srid'),
            saveDatetime: BuiltValueNullFieldError.checkNotNull(
                saveDatetime, r'ShowLocation', 'saveDatetime'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
