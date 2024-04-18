import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PostApi
void main() {
  final instance = Openapi().getPostApi();

  group(PostApi, () {
    // 投稿
    //
    // 投稿します。
    //
    //Future<JsonResponse> post(String xLanguage, String xUserAgent, String body, num lat, num lng, String point, String geoHash, { Country country, AdministrativeArea administrativeArea, SubAdministrativeArea subAdministrativeArea, Locality locality, SubLocality subLocality, PostalCode postalCode, Name name, Street street, IsoCountryCode isoCountryCode, Thoroughfare thoroughfare, SubThoroughfare subThoroughfare }) async
    test('test post', () async {
      // TODO
    });

  });
}
