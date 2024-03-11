import 'package:spot_gab_app/importer.dart';

class RegisterProviders {
  static final basicInfoGlobalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );
  static final idAccountGlobalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );

  static final emailProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final birthdayProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final accountNameProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final idAccountProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordVisibilityProvider = StateProvider((ref) => false);

  static final basicInfoSubmitProvider = Provider(
    (ref) => (BuildContext context, String email) async {
      try {
        final formState = ref.watch(basicInfoGlobalKeyProvider).currentState;
        if (formState != null && formState.validate()) {
          final authRepository = ref.read(authRepositoryProvider);
          final emailExistsResponse = await authRepository.emailExists(email);
          if (emailExistsResponse != null &&
              emailExistsResponse.data?.data?.exists == false) {
            RegisterIdAccountRoute().push(context);
            return true;
          } else {
            ref.read(errorMessageHandle)(
              L10n.of(context)?.emailExsitError ?? '',
              context,
            );
          }
        }
      } on Exception catch (error) {
        ref.read(errorMessageHandle)(error.toString(), context);
      }
      return false;
    },
  );

  static final idAccountSubmitProvider = Provider(
    (ref) => (BuildContext context, String idAccount) async {
      try {
        final formState = ref.watch(idAccountGlobalKeyProvider).currentState;
        if (formState != null && formState.validate()) {
          final AuthRepository authRepository =
              ref.read(authRepositoryProvider);
          final isIdAccountExists =
              await authRepository.idAccountExists(idAccount);

          final isExists = isIdAccountExists.data?.data?.exists;
          if (isIdAccountExists.isSuccess && isExists != null && !isExists) {
            final response = await authRepository.sign_up(
              _createRequest(
                email: ref.read(emailProvider).text,
                password: ref.read(passwordProvider).text,
                birthDate: ref.read(birthdayProvider).text,
                accountName: ref.read(accountNameProvider).text,
                idAccount: ref.read(idAccountProvider).text,
              ),
            );
            final user = response.data?.data?.user;
            if (user != null && user.token != null) {
              final userProvider = ref.read(userNotifierProvider.notifier);
              _save_user(user: user, userProvider: userProvider);
              _saveTokens(
                token: user.token!,
                refreshToken: user.refreshToken,
                storage: ref.read(secure_token_provider),
              );
              _clearTextEditingController(ref);

              RegisterCompleteRoute().go(context);
            }
            return true;
          } else {
            ref.read(errorMessageHandle)(
              L10n.of(context)?.idAccountExsitError ?? '',
              context,
            );
          }
        }
      } catch (error) {
        ref.read(errorMessageHandle)(error.toString(), context);
      }
      return false;
    },
  );

  static void _save_user({
    required SignUpUser user,
    required UserNotifier userProvider,
  }) {
    final usr = User(
        id: user.id,
        uuid: user.uuid,
        accountName: user.accountName,
        idAccount: user.idAccount,
        email: user.email,
        birthDate: user.birthDate.toString(),
        otherUserInvitationCode: user.otherUserInvitationCode.toString(),
        isEmailVerified: user.emailVerified);

    userProvider.setUser(usr);
  }

  static SignUpRequest _createRequest({
    required String email,
    required String password,
    required String birthDate,
    required String accountName,
    required String idAccount,
  }) {
    final format = DateFormat('yyyy-MM-dd');
    final birthDateFormat = format.parseStrict(birthDate);
    return SignUpRequest(((b) => b
      ..email = email
      ..password = password
      ..birthDate = birthDateFormat.toDate()
      ..accountName = accountName
      ..idAccount = '@$idAccount'));
  }

  static Future<void> _saveTokens({
    required Token token,
    required String refreshToken,
    required SecureTokenRepository storage,
  }) async {
    await storage.saveToken(token.toString());
    await storage.saveRefreshToken(refreshToken);
  }

  static void _clearTextEditingController(ProviderRef ref) {
    ref.read(emailProvider).clear();
    ref.read(passwordProvider).clear();
    ref.read(birthdayProvider).clear();
    ref.read(accountNameProvider).clear();
    ref.read(idAccountProvider).clear();
  }
}

final registerProviders = Provider((ref) => RegisterProviders());
