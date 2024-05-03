import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // メールアドレスの存在確認
    //
    // emailの存在確認。ture: 存在する, false: 存在しない
    //
    //Future<EmailExistsResponse> emailExists(String xLanguage, String xUserAgent, EmailExistsRequest emailExistsRequest) async
    test('test emailExists', () async {
      // TODO
    });

    // Id Accountの存在確認
    //
    // id_accountの存在確認。ture: 存在する, false: 存在しない
    //
    //Future<IdAccountExistsResponse> idAccountExists(String xLanguage, String xUserAgent, IdAccountExistsRequest idAccountExistsRequest) async
    test('test idAccountExists', () async {
      // TODO
    });

    // パスワードリセット画面
    //
    // パスワードリセット画面
    //
    //Future<String> passwordResetPage(String token, String lang) async
    test('test passwordResetPage', () async {
      // TODO
    });

    // パスワードリセット認証
    //
    // パスワードリセット認証
    //
    //Future<String> passwordResetVerify(String password) async
    test('test passwordResetVerify', () async {
      // TODO
    });

    // トークンリフレッシュ
    //
    // トークンリフレッシュ
    //
    //Future<SignUpResponse> refreshToken(String xLanguage, String xUserAgent, RefreshTokenRequest refreshTokenRequest) async
    test('test refreshToken', () async {
      // TODO
    });

    // パスワードリセット
    //
    // パスワードリセットメールを送信する
    //
    //Future<JsonResponse> resetPassword(String xLanguage, String xUserAgent, ResetPasswordRequest resetPasswordRequest) async
    test('test resetPassword', () async {
      // TODO
    });

    // サインイン
    //
    // サインイン
    //
    //Future<SignInResponse> signIn(String username, String password, { GrantType grantType, String scope, ClientId clientId, ClientSecret clientSecret }) async
    test('test signIn', () async {
      // TODO
    });

    // サインアウト
    //
    // サインアウト
    //
    //Future<JsonResponse> signOut(String xLanguage, String xUserAgent) async
    test('test signOut', () async {
      // TODO
    });

    // サインアップ
    //
    // サインアップ
    //
    //Future<SignUpResponse> signUp(String xLanguage, String xUserAgent, SignUpRequest signUpRequest) async
    test('test signUp', () async {
      // TODO
    });

    // メールアドレスの確認
    //
    // メールアドレスの確認
    //
    //Future<String> verifyEmail(String token, String lang) async
    test('test verifyEmail', () async {
      // TODO
    });

  });
}
