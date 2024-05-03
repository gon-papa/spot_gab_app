import 'package:now_go_app/importer.dart';

class HomeProviders {
  static final googleMapControllerProvider =
      StateProvider<GoogleMapController?>((ref) => null);
}

final homeProviders =
    Provider.autoDispose<HomeProviders>((ref) => HomeProviders());
