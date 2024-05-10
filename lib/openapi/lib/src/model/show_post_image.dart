//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'show_post_image.g.dart';

/// ShowPostImage
///
/// Properties:
/// * [imagePath] 
/// * [createdAt] 
@BuiltValue()
abstract class ShowPostImage implements Built<ShowPostImage, ShowPostImageBuilder> {
  @BuiltValueField(wireName: r'image_path')
  String get imagePath;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  ShowPostImage._();

  factory ShowPostImage([void updates(ShowPostImageBuilder b)]) = _$ShowPostImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShowPostImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShowPostImage> get serializer => _$ShowPostImageSerializer();
}

class _$ShowPostImageSerializer implements PrimitiveSerializer<ShowPostImage> {
  @override
  final Iterable<Type> types = const [ShowPostImage, _$ShowPostImage];

  @override
  final String wireName = r'ShowPostImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShowPostImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'image_path';
    yield serializers.serialize(
      object.imagePath,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ShowPostImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShowPostImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePath = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShowPostImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShowPostImageBuilder();
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

