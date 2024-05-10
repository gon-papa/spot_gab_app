//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'show_location.g.dart';

/// ShowLocation
///
/// Properties:
/// * [uuid] 
/// * [lat] 
/// * [lng] 
/// * [geoHash] 
/// * [srid] 
/// * [saveDatetime] 
@BuiltValue()
abstract class ShowLocation implements Built<ShowLocation, ShowLocationBuilder> {
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  @BuiltValueField(wireName: r'lat')
  String get lat;

  @BuiltValueField(wireName: r'lng')
  String get lng;

  @BuiltValueField(wireName: r'geo_hash')
  String get geoHash;

  @BuiltValueField(wireName: r'srid')
  String get srid;

  @BuiltValueField(wireName: r'save_datetime')
  DateTime get saveDatetime;

  ShowLocation._();

  factory ShowLocation([void updates(ShowLocationBuilder b)]) = _$ShowLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShowLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShowLocation> get serializer => _$ShowLocationSerializer();
}

class _$ShowLocationSerializer implements PrimitiveSerializer<ShowLocation> {
  @override
  final Iterable<Type> types = const [ShowLocation, _$ShowLocation];

  @override
  final String wireName = r'ShowLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShowLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType(String),
      );
    }
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
    yield r'geo_hash';
    yield serializers.serialize(
      object.geoHash,
      specifiedType: const FullType(String),
    );
    yield r'srid';
    yield serializers.serialize(
      object.srid,
      specifiedType: const FullType(String),
    );
    yield r'save_datetime';
    yield serializers.serialize(
      object.saveDatetime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ShowLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShowLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
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
        case r'geo_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.geoHash = valueDes;
          break;
        case r'srid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.srid = valueDes;
          break;
        case r'save_datetime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.saveDatetime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShowLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShowLocationBuilder();
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

