import 'package:spot_gab_app/importer.dart';

class LocationRepository extends BaseRepository {
  LocationRepository() : super();

  Future<Position> getCurrentLocation() async {
    try {
      await checkPermission();
      return await Geolocator.getCurrentPosition(
        timeLimit: const Duration(seconds: 10),
      );
    } catch (e) {
      throw LocationException(
        message: '位置情報の取得に失敗しました。設定より、位置情報へのアクセスを許可してください。',
        code: 'LocationError',
      );
    }
  }

  Future<void> checkPermission() async {
    PermissionStatus permission = await Permission.location.request();
    switch (permission) {
      case PermissionStatus.granted:
        break;
      case PermissionStatus.denied:
      case PermissionStatus.permanentlyDenied:
        // ユーザーに設定画面で権限を有効にするよう案内
        await openAppSettings();
        break;
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
        await openAppSettings();
        break;
      case PermissionStatus.provisional:
        break;
    }
  }
}

final locationRepositoryProvider =
    Provider.autoDispose<LocationRepository>((ref) => LocationRepository());
