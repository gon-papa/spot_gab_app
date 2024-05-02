import 'package:now_go_app/importer.dart';

// 住所 -> 緯度経度変換用Provider
class GeoCodingProviders {
  static final placemarkFromAddressProvider = Provider.autoDispose(
    (ref) => ({
      required String address,
    }) async {
      final geoCodingRepository = ref.read(locationRepositoryProvider);
      final response =
          await geoCodingRepository.getPlacemarkFromAddress(address);
      return response;
    },
  );

  // 緯度経度 -> 住所変換用Provider
  static final addressFromLatLngProvider =
      FutureProvider.autoDispose.family<List<Placemark>, LatLng>(
    (ref, latLng) async {
      final geoCodingRepository = ref.read(locationRepositoryProvider);
      final response = await geoCodingRepository.getPlacemark(latLng);
      return response;
    },
  );
}

final geoCodingProviders =
    Provider.autoDispose<GeoCodingProviders>((ref) => GeoCodingProviders());
