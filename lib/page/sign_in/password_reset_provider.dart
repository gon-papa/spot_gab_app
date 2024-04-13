import 'package:now_go_app/importer.dart';

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
        if (formState != null && formState.validate()) {
          try {
            final AuthRepository authRepository =
                ref.read(authRepositoryProvider);
            await authRepository.passwordReset(
              ref.read(emailProvider).text,
            );
            ref.read(emailProvider).clear();
            PasswordResetSendEmailRoute().go(context);
          } on Exception catch (error) {
            ref.read(errorMessageHandle)(error.toString(), context);
          }
        }
      });
}

final passwordResetProvider =
    Provider.autoDispose((ref) => PasswordResetProviders());
