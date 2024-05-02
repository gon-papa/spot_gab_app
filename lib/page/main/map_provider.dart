import 'package:now_go_app/importer.dart';

// 地図関連Provider
class MapProviders {
  // 現在地取得
  static final getMyPositionProvider = Provider(
    (ref) => ({
      required BuildContext context,
    }) async {
      try {
        final locationRepository = ref.read(locationRepositoryProvider);
        final response = await locationRepository.getCurrentLocation();
        ref.read(myLatLngProvider.notifier).state = LatLng(
          response.latitude,
          response.longitude,
        );
        return response;
      } catch (e) {
        ref.read(errorMessageHandle)(e.toString(), context);
      }
    },
  );

  // 現在地緯度経度
  static final myLatLngProvider = StateProvider<LatLng>((ref) {
    return LatLng(0, 0);
  });
}

final mapProvisers = Provider<MapProviders>((ref) => MapProviders());
