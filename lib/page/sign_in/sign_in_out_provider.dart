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
        try {
          final formState = ref.read(globalKeyProvider).currentState;
          if (formState != null && formState.validate()) {
            final AuthRepository authRepository =
                ref.read(authRepositoryProvider);
            final response = await authRepository.signIn(
              email: email,
              password: password,
            );

            if (response.isSuccess && response.data != null) {
              _clearTextEditingController(ref);
              HomeRoute().go(context);
            } else {
              ref.read(errorMessageHandle)(response.error, context);
            }
          }
        } on Exception catch (error) {
          ref.read(errorMessageHandle)(error.toString(), context);
        }
      });

  static void _clearTextEditingController(ProviderRef ref) {
    ref.read(emailProvider).clear();
    ref.read(passwordProvider).clear();
  }
}

class SignOutProviders {
  static final signOutSubmitProvider = Provider((ref) => ({
        required BuildContext context,
      }) async {
        try {
          final AuthRepository authRepository =
              ref.read(authRepositoryProvider);
          await authRepository.signOut();
        } finally {
          final se = ref.watch(secure_token_provider);
          await se.deleteToken();
          await se.deleteRefreshToken();
          SignInRoute().go(context);
        }
      });
}

final SignInProvider = Provider.autoDispose((ref) => SignInProviders());
final SignOutProvider = Provider.autoDispose((ref) => SignOutProviders());
