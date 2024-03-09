import 'package:spot_gab_app/importer.dart';

class SignInProviders {
  static final globalKeyProvider = Provider.autoDispose(
    (_) => GlobalKey<FormState>(),
  );

  static final emailProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordVisibilityProvider = StateProvider((ref) => false);

  static final signInSubmitProvider = Provider((ref) => ({
        required BuildContext context,
        required String email,
        required String password,
      }) async {
        final AuthRepository authRepository = ref.read(authRepositoryProvider);
        final response = await authRepository.signIn(
          context: context,
          email: email,
          password: password,
        );

        if (response?.data?.accessToken != null) {
          await _saveAccessToken(
            accessToken: response!.data!.accessToken,
            storage: ref.read(secure_token_provider),
          );
          _clearTextEditingController(ref);
          HomeRoute().go(context);
        }
      });

  static Future<void> _saveAccessToken({
    required String accessToken,
    required SecureTokenRepository storage,
  }) async {
    await storage.saveToken(accessToken);
  }

  static void _clearTextEditingController(ProviderRef ref) {
    ref.read(emailProvider).clear();
    ref.read(passwordProvider).clear();
  }
}

class SignOutProviders {
  static final signOutSubmitProvider = Provider((ref) => ({
        required BuildContext context,
      }) async {
        final se = ref.watch(secure_token_provider);
        await se.deleteToken();
        SignInRoute().go(context);
      });
}

final SignInProvider = Provider.autoDispose((ref) => SignInProviders());
final SignOutProvider = Provider.autoDispose((ref) => SignOutProviders());
