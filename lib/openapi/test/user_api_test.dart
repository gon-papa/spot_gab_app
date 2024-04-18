import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // マイページ用ユーザー取得(自身と他人含む)
    //
    // マイページ用ユーザー取得(自身と他人含む)
    //
    //Future<MeResponse> getMe(String xLanguage, String xUserAgent) async
    test('test getMe', () async {
      // TODO
    });

    // ユーザープロフィール保存
    //
    // ユーザープロフィールを保存します。
    //
    //Future<JsonResponse> saveUserProfile(String xLanguage, String xUserAgent, UserProfileRequest userProfileRequest) async
    test('test saveUserProfile', () async {
      // TODO
    });

  });
}
