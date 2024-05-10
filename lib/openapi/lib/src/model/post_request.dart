//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_request.g.dart';

/// Attributes: body : str     投稿本文 hashtags : List[str]     ハッシュタグ images : List[str]     画像 lat : str     緯度 lng : str     経度 point : str     位置情報 geo_hash : str     ジオハッシュ country : str     国 administrative_area : str     都道府県 sub_administrative_area : str     市区町村 locality : str     市区町村 sub_locality : str     町名 postal_code : str     郵便番号 name : str     地名 street : str     住所 iso_country_code : str     ISO国コード thoroughfare : str     通り sub_thoroughfare : str     番地
///
/// Properties:
/// * [body] - 投稿本文
/// * [hashtags] - ハッシュタグ
/// * [images] - 画像
/// * [lat] - 緯度
/// * [lng] - 経度
/// * [point] - 位置情報
/// * [geoHash] - ジオハッシュ
/// * [country] - 国
/// * [administrativeArea] - 都道府県
/// * [subAdministrativeArea] - 市区町村
/// * [locality] - 市区町村
/// * [subLocality] - 町名
/// * [postalCode] - 郵便番号
/// * [name] - 地名
/// * [street] - 住所
/// * [isoCountryCode] - ISO国コード
/// * [thoroughfare] - 通り
/// * [subThoroughfare] - 番地
@BuiltValue()
abstract class PostRequest implements Built<PostRequest, PostRequestBuilder> {
  /// 投稿本文
  @BuiltValueField(wireName: r'body')
  String get body;

  /// ハッシュタグ
  @BuiltValueField(wireName: r'hashtags')
  BuiltList<String> get hashtags;

  /// 画像
  @BuiltValueField(wireName: r'images')
  BuiltList<String> get images;

  /// 緯度
  @BuiltValueField(wireName: r'lat')
  String get lat;

  /// 経度
  @BuiltValueField(wireName: r'lng')
  String get lng;

  /// 位置情報
  @BuiltValueField(wireName: r'point')
  String get point;

  /// ジオハッシュ
  @BuiltValueField(wireName: r'geo_hash')
  String get geoHash;

  /// 国
  @BuiltValueField(wireName: r'country')
  String get country;

  /// 都道府県
  @BuiltValueField(wireName: r'administrative_area')
  String get administrativeArea;

  /// 市区町村
  @BuiltValueField(wireName: r'sub_administrative_area')
  String get subAdministrativeArea;

  /// 市区町村
  @BuiltValueField(wireName: r'locality')
  String get locality;

  /// 町名
  @BuiltValueField(wireName: r'sub_locality')
  String get subLocality;

  /// 郵便番号
  @BuiltValueField(wireName: r'postal_code')
  String get postalCode;

  /// 地名
  @BuiltValueField(wireName: r'name')
  String get name;

  /// 住所
  @BuiltValueField(wireName: r'street')
  String get street;

  /// ISO国コード
  @BuiltValueField(wireName: r'iso_country_code')
  String get isoCountryCode;

  /// 通り
  @BuiltValueField(wireName: r'thoroughfare')
  String get thoroughfare;

  /// 番地
  @BuiltValueField(wireName: r'sub_thoroughfare')
  String get subThoroughfare;

  PostRequest._();

  factory PostRequest([void updates(PostRequestBuilder b)]) = _$PostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostRequest> get serializer => _$PostRequestSerializer();
}

class _$PostRequestSerializer implements PrimitiveSerializer<PostRequest> {
  @override
  final Iterable<Type> types = const [PostRequest, _$PostRequest];

  @override
  final String wireName = r'PostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    yield r'hashtags';
    yield serializers.serialize(
      object.hashtags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'images';
    yield serializers.serialize(
      object.images,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'lat';
    yield serializers.serialize(
      object.lat,
      specifiedType: const FullType(String),
    );
    yield r'lng';
    yield serializers.serialize(
      object.lng,
      specifiedType: const FullType(String),
    );
    yield r'point';
    yield serializers.serialize(
      object.point,
      specifiedType: const FullType(String),
    );
    yield r'geo_hash';
    yield serializers.serialize(
      object.geoHash,
      specifiedType: const FullType(String),
    );
    yield r'country';
    yield serializers.serialize(
      object.country,
      specifiedType: const FullType(String),
    );
    yield r'administrative_area';
    yield serializers.serialize(
      object.administrativeArea,
      specifiedType: const FullType(String),
    );
    yield r'sub_administrative_area';
    yield serializers.serialize(
      object.subAdministrativeArea,
      specifiedType: const FullType(String),
    );
    yield r'locality';
    yield serializers.serialize(
      object.locality,
      specifiedType: const FullType(String),
    );
    yield r'sub_locality';
    yield serializers.serialize(
      object.subLocality,
      specifiedType: const FullType(String),
    );
    yield r'postal_code';
    yield serializers.serialize(
      object.postalCode,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'street';
    yield serializers.serialize(
      object.street,
      specifiedType: const FullType(String),
    );
    yield r'iso_country_code';
    yield serializers.serialize(
      object.isoCountryCode,
      specifiedType: const FullType(String),
    );
    yield r'thoroughfare';
    yield serializers.serialize(
      object.thoroughfare,
      specifiedType: const FullType(String),
    );
    yield r'sub_thoroughfare';
    yield serializers.serialize(
      object.subThoroughfare,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'hashtags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.hashtags.replace(valueDes);
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.images.replace(valueDes);
          break;
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lat = valueDes;
          break;
        case r'lng':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lng = valueDes;
          break;
        case r'point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.point = valueDes;
          break;
        case r'geo_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.geoHash = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        case r'administrative_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.administrativeArea = valueDes;
          break;
        case r'sub_administrative_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subAdministrativeArea = valueDes;
          break;
        case r'locality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locality = valueDes;
          break;
        case r'sub_locality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subLocality = valueDes;
          break;
        case r'postal_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postalCode = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'street':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.street = valueDes;
          break;
        case r'iso_country_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isoCountryCode = valueDes;
          break;
        case r'thoroughfare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.thoroughfare = valueDes;
          break;
        case r'sub_thoroughfare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subThoroughfare = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

