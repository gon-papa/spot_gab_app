import 'package:spot_gab_app/importer.dart';

class HomeProviders {
  static final getMyPositionProvider = Provider((ref) => ({
        required BuildContext context,
      }) async {
        try {
          final locationRepository = ref.read(locationRepositoryProvider);
          final response = await locationRepository.getCurrentLocation();
          ref.read(myPositionProvider.notifier).state = response;
          return response;
        } catch (e) {
          ref.read(errorMessageHandle)(e.toString(), context);
        }
      });

  static final myPositionProvider = StateProvider<Position?>((ref) => null);
}

final homeProviders =
    Provider.autoDispose<HomeProviders>((ref) => HomeProviders());
