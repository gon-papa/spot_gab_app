//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_response_item.g.dart';

/// ImageResponseItem
///
/// Properties:
/// * [uuid] - 画像UUID
/// * [name] - 画像名
/// * [path] - 画像URL
@BuiltValue()
abstract class ImageResponseItem implements Built<ImageResponseItem, ImageResponseItemBuilder> {
  /// 画像UUID
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// 画像名
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// 画像URL
  @BuiltValueField(wireName: r'path')
  String? get path;

  ImageResponseItem._();

  factory ImageResponseItem([void updates(ImageResponseItemBuilder b)]) = _$ImageResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageResponseItem> get serializer => _$ImageResponseItemSerializer();
}

class _$ImageResponseItemSerializer implements PrimitiveSerializer<ImageResponseItem> {
  @override
  final Iterable<Type> types = const [ImageResponseItem, _$ImageResponseItem];

  @override
  final String wireName = r'ImageResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageResponseItemBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImageResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageResponseItemBuilder();
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

