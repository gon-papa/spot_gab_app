import 'package:now_go_app/importer.dart';

class AuthRepository extends BaseRepository {
  AuthRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Result<SignUpResponse?>> sign_up(
    SignUpRequest signUpRequest,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.signUp(
        signUpRequest: signUpRequest,
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<SignInResponse?>> signIn({
    required String email,
    required String password,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.signIn(
        username: email,
        password: password,
        headers: {
          "x-language": "ja",
          "x-user-agent": const String.fromEnvironment("user_agent")
        },
      );
      return response.data;
    });

    final token = response.data?.accessToken;
    final refreshToken = response.data?.refreshToken;

    if (response.isSuccess && token != null && refreshToken != null) {
      await ref.read(secure_token_provider).saveToken(token);
      await ref.read(secure_token_provider).saveRefreshToken(refreshToken);
      return response;
    }
    throw ApiException(DEFAULT_ERROR, result: response);
  }

  Future<Result<JsonResponse?>> signOut() async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final authApi = getClient(token: token).getAuthApi();
      final response = await authApi.signOut(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<SignUpResponse?>> refreshToken({
    required String refreshToken,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.refreshToken(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
        refreshTokenRequest: RefreshTokenRequest(
          (b) => b.refreshToken = refreshToken,
        ),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<EmailExistsResponse?>>? emailExists(
    String email,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.emailExists(
        emailExistsRequest: EmailExistsRequest(((b) => b.email = email)),
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<IdAccountExistsResponse?>> idAccountExists(
    String idAccount,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.idAccountExists(
        idAccountExistsRequest:
            IdAccountExistsRequest(((b) => b.idAccount = '@$idAccount')),
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<JsonResponse?>> passwordReset(
    String email,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.resetPassword(
        resetPasswordRequest: ResetPasswordRequest(((b) => b.email = email)),
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }
}

final authRepositoryProvider = Provider.autoDispose<AuthRepository>(
  (ref) {
    return AuthRepository();
  },
);
