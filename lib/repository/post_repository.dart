import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:now_go_app/importer.dart';

class PostRepository extends BaseRepository {
  PostRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Result<JsonResponse?>> post({
    required String post,
    required List<String> images,
    required LatLng postPosition,
    required List<Placemark> places,
    required String geoHash,
    required List<String> hashTags,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final postApi = getClient(token: token).getPostApi();
      final response = await postApi.post(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
        postRequest: PostRequest(
          (b) => b
            ..body = post
            ..hashtags = ListBuilder(hashTags)
            ..images = ListBuilder(images)
            ..lat = postPosition.latitude.toString()
            ..lng = postPosition.longitude.toString()
            ..point =
                'POINT(${postPosition.latitude} ${postPosition.longitude})'
            ..geoHash = geoHash
            ..country = places.first.country
            ..administrativeArea = places.first.administrativeArea
            ..subAdministrativeArea = places.first.subAdministrativeArea
            ..locality = places.first.locality
            ..subLocality = places.first.subLocality
            ..postalCode = places.first.postalCode
            ..name = places.first.name
            ..street = places.first.street
            ..isoCountryCode = places.first.isoCountryCode
            ..thoroughfare = places.first.thoroughfare
            ..subThoroughfare = places.first.subThoroughfare,
        ),
      );
      return response.data;
    });

    return response;
  }
}

final postRepositoryProvider =
    Provider.autoDispose<PostRepository>((ref) => PostRepository());
