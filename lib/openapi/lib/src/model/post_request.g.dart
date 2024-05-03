// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostRequest extends PostRequest {
  @override
  final String body;
  @override
  final BuiltList<String> hashtags;
  @override
  final BuiltList<String> images;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String point;
  @override
  final String geoHash;
  @override
  final String country;
  @override
  final String administrativeArea;
  @override
  final String subAdministrativeArea;
  @override
  final String locality;
  @override
  final String subLocality;
  @override
  final String postalCode;
  @override
  final String name;
  @override
  final String street;
  @override
  final String isoCountryCode;
  @override
  final String thoroughfare;
  @override
  final String subThoroughfare;

  factory _$PostRequest([void Function(PostRequestBuilder)? updates]) =>
      (new PostRequestBuilder()..update(updates))._build();

  _$PostRequest._(
      {required this.body,
      required this.hashtags,
      required this.images,
      required this.lat,
      required this.lng,
      required this.point,
      required this.geoHash,
      required this.country,
      required this.administrativeArea,
      required this.subAdministrativeArea,
      required this.locality,
      required this.subLocality,
      required this.postalCode,
      required this.name,
      required this.street,
      required this.isoCountryCode,
      required this.thoroughfare,
      required this.subThoroughfare})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(body, r'PostRequest', 'body');
    BuiltValueNullFieldError.checkNotNull(hashtags, r'PostRequest', 'hashtags');
    BuiltValueNullFieldError.checkNotNull(images, r'PostRequest', 'images');
    BuiltValueNullFieldError.checkNotNull(lat, r'PostRequest', 'lat');
    BuiltValueNullFieldError.checkNotNull(lng, r'PostRequest', 'lng');
    BuiltValueNullFieldError.checkNotNull(point, r'PostRequest', 'point');
    BuiltValueNullFieldError.checkNotNull(geoHash, r'PostRequest', 'geoHash');
    BuiltValueNullFieldError.checkNotNull(country, r'PostRequest', 'country');
    BuiltValueNullFieldError.checkNotNull(
        administrativeArea, r'PostRequest', 'administrativeArea');
    BuiltValueNullFieldError.checkNotNull(
        subAdministrativeArea, r'PostRequest', 'subAdministrativeArea');
    BuiltValueNullFieldError.checkNotNull(locality, r'PostRequest', 'locality');
    BuiltValueNullFieldError.checkNotNull(
        subLocality, r'PostRequest', 'subLocality');
    BuiltValueNullFieldError.checkNotNull(
        postalCode, r'PostRequest', 'postalCode');
    BuiltValueNullFieldError.checkNotNull(name, r'PostRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(street, r'PostRequest', 'street');
    BuiltValueNullFieldError.checkNotNull(
        isoCountryCode, r'PostRequest', 'isoCountryCode');
    BuiltValueNullFieldError.checkNotNull(
        thoroughfare, r'PostRequest', 'thoroughfare');
    BuiltValueNullFieldError.checkNotNull(
        subThoroughfare, r'PostRequest', 'subThoroughfare');
  }

  @override
  PostRequest rebuild(void Function(PostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostRequestBuilder toBuilder() => new PostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostRequest &&
        body == other.body &&
        hashtags == other.hashtags &&
        images == other.images &&
        lat == other.lat &&
        lng == other.lng &&
        point == other.point &&
        geoHash == other.geoHash &&
        country == other.country &&
        administrativeArea == other.administrativeArea &&
        subAdministrativeArea == other.subAdministrativeArea &&
        locality == other.locality &&
        subLocality == other.subLocality &&
        postalCode == other.postalCode &&
        name == other.name &&
        street == other.street &&
        isoCountryCode == other.isoCountryCode &&
        thoroughfare == other.thoroughfare &&
        subThoroughfare == other.subThoroughfare;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jc(_$hash, geoHash.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, administrativeArea.hashCode);
    _$hash = $jc(_$hash, subAdministrativeArea.hashCode);
    _$hash = $jc(_$hash, locality.hashCode);
    _$hash = $jc(_$hash, subLocality.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, isoCountryCode.hashCode);
    _$hash = $jc(_$hash, thoroughfare.hashCode);
    _$hash = $jc(_$hash, subThoroughfare.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostRequest')
          ..add('body', body)
          ..add('hashtags', hashtags)
          ..add('images', images)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('point', point)
          ..add('geoHash', geoHash)
          ..add('country', country)
          ..add('administrativeArea', administrativeArea)
          ..add('subAdministrativeArea', subAdministrativeArea)
          ..add('locality', locality)
          ..add('subLocality', subLocality)
          ..add('postalCode', postalCode)
          ..add('name', name)
          ..add('street', street)
          ..add('isoCountryCode', isoCountryCode)
          ..add('thoroughfare', thoroughfare)
          ..add('subThoroughfare', subThoroughfare))
        .toString();
  }
}

class PostRequestBuilder implements Builder<PostRequest, PostRequestBuilder> {
  _$PostRequest? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  ListBuilder<String>? _hashtags;
  ListBuilder<String> get hashtags =>
      _$this._hashtags ??= new ListBuilder<String>();
  set hashtags(ListBuilder<String>? hashtags) => _$this._hashtags = hashtags;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  String? _point;
  String? get point => _$this._point;
  set point(String? point) => _$this._point = point;

  String? _geoHash;
  String? get geoHash => _$this._geoHash;
  set geoHash(String? geoHash) => _$this._geoHash = geoHash;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _administrativeArea;
  String? get administrativeArea => _$this._administrativeArea;
  set administrativeArea(String? administrativeArea) =>
      _$this._administrativeArea = administrativeArea;

  String? _subAdministrativeArea;
  String? get subAdministrativeArea => _$this._subAdministrativeArea;
  set subAdministrativeArea(String? subAdministrativeArea) =>
      _$this._subAdministrativeArea = subAdministrativeArea;

  String? _locality;
  String? get locality => _$this._locality;
  set locality(String? locality) => _$this._locality = locality;

  String? _subLocality;
  String? get subLocality => _$this._subLocality;
  set subLocality(String? subLocality) => _$this._subLocality = subLocality;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _isoCountryCode;
  String? get isoCountryCode => _$this._isoCountryCode;
  set isoCountryCode(String? isoCountryCode) =>
      _$this._isoCountryCode = isoCountryCode;

  String? _thoroughfare;
  String? get thoroughfare => _$this._thoroughfare;
  set thoroughfare(String? thoroughfare) => _$this._thoroughfare = thoroughfare;

  String? _subThoroughfare;
  String? get subThoroughfare => _$this._subThoroughfare;
  set subThoroughfare(String? subThoroughfare) =>
      _$this._subThoroughfare = subThoroughfare;

  PostRequestBuilder() {
    PostRequest._defaults(this);
  }

  PostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _hashtags = $v.hashtags.toBuilder();
      _images = $v.images.toBuilder();
      _lat = $v.lat;
      _lng = $v.lng;
      _point = $v.point;
      _geoHash = $v.geoHash;
      _country = $v.country;
      _administrativeArea = $v.administrativeArea;
      _subAdministrativeArea = $v.subAdministrativeArea;
      _locality = $v.locality;
      _subLocality = $v.subLocality;
      _postalCode = $v.postalCode;
      _name = $v.name;
      _street = $v.street;
      _isoCountryCode = $v.isoCountryCode;
      _thoroughfare = $v.thoroughfare;
      _subThoroughfare = $v.subThoroughfare;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostRequest;
  }

  @override
  void update(void Function(PostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostRequest build() => _build();

  _$PostRequest _build() {
    _$PostRequest _$result;
    try {
      _$result = _$v ??
          new _$PostRequest._(
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'PostRequest', 'body'),
              hashtags: hashtags.build(),
              images: images.build(),
              lat: BuiltValueNullFieldError.checkNotNull(
                  lat, r'PostRequest', 'lat'),
              lng: BuiltValueNullFieldError.checkNotNull(
                  lng, r'PostRequest', 'lng'),
              point: BuiltValueNullFieldError.checkNotNull(
                  point, r'PostRequest', 'point'),
              geoHash: BuiltValueNullFieldError.checkNotNull(
                  geoHash, r'PostRequest', 'geoHash'),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'PostRequest', 'country'),
              administrativeArea: BuiltValueNullFieldError.checkNotNull(
                  administrativeArea, r'PostRequest', 'administrativeArea'),
              subAdministrativeArea: BuiltValueNullFieldError.checkNotNull(
                  subAdministrativeArea, r'PostRequest', 'subAdministrativeArea'),
              locality: BuiltValueNullFieldError.checkNotNull(
                  locality, r'PostRequest', 'locality'),
              subLocality: BuiltValueNullFieldError.checkNotNull(
                  subLocality, r'PostRequest', 'subLocality'),
              postalCode:
                  BuiltValueNullFieldError.checkNotNull(postalCode, r'PostRequest', 'postalCode'),
              name: BuiltValueNullFieldError.checkNotNull(name, r'PostRequest', 'name'),
              street: BuiltValueNullFieldError.checkNotNull(street, r'PostRequest', 'street'),
              isoCountryCode: BuiltValueNullFieldError.checkNotNull(isoCountryCode, r'PostRequest', 'isoCountryCode'),
              thoroughfare: BuiltValueNullFieldError.checkNotNull(thoroughfare, r'PostRequest', 'thoroughfare'),
              subThoroughfare: BuiltValueNullFieldError.checkNotNull(subThoroughfare, r'PostRequest', 'subThoroughfare'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hashtags';
        hashtags.build();
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
