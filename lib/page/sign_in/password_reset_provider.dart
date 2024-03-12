import 'package:spot_gab_app/importer.dart';

class PasswordResetProviders {
  static final globalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );

  static final emailProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final submitProvider = Provider((ref) => ({
        required BuildContext context,
      }) async {
        final formState = ref.watch(globalKeyProvider).currentState;
        if (formState != null && formState.validate()) {}
        // final AuthRepository authRepository = ref.read(authRepositoryProvider);
        // final se = ref.watch(secure_token_provider);
        // await authRepository.signOut();
        // await se.deleteToken();
        // await se.deleteRefreshToken();
        // SignInRoute().go(context);
        return false;
      });
}

final passwordResetProvider =
    Provider.autoDispose((ref) => PasswordResetProviders());
