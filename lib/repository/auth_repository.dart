import 'package:spot_gab_app/importer.dart';

class AuthRepository extends BaseRepository {
  AuthRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Response<SignUpResponse>?>? sign_up(
    BuildContext context,
    SignUpRequest signUpRequest,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.signUp(
        signUpRequest: signUpRequest,
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<SignUpResponse>) {
      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<SignInResponse>?>? signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.signIn(
        username: email,
        password: password,
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<SignInResponse>) {
      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<JsonResponse>?>? signOut({
    required BuildContext context,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final authApi = getClient(token: token).getAuthApi();
      final response = await authApi.signOut(
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<JsonResponse>) {
      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<EmailExistsResponse>?>? emailExists(
    BuildContext context,
    String email,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.emailExists(
        emailExistsRequest: EmailExistsRequest(((b) => b.email = email)),
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<EmailExistsResponse>) {
      if (response.data?.data?.exists == true) {
        if (context.mounted) {
          showErrorDialog(
              context: context,
              message: L10n.of(context)?.emailExsitError ?? "");
        }
        return null; // 異常系
      }

      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<IdAccountExistsResponse>?>? idAccountExists(
    BuildContext context,
    String idAccount,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.idAccountExists(
        idAccountExistsRequest:
            IdAccountExistsRequest(((b) => b.idAccount = '@$idAccount')),
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<IdAccountExistsResponse>) {
      if (response.data?.data?.exists == true) {
        if (context.mounted) {
          showErrorDialog(
            context: context,
            message: L10n.of(context)?.idAccountExsitError ?? "",
          );
        }
        return null; // 異常系
      }

      return response; // 正常系
    }
    return null; // 異常系
  }
}

final authRepositoryProvider = Provider.autoDispose<AuthRepository>(
  (ref) {
    return AuthRepository();
  },
);
