import 'dart:io';

import 'package:now_go_app/importer.dart';

class UserRepository extends BaseRepository {
  UserRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Result<MeResponse?>> getMe() async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final userApi = getClient(token: token).getUserApi();
      final response = await userApi.getMe(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
      );
      return response.data;
    });

    return response;
  }

  Future<Result<JsonResponse?>> updateMe({
    required String? accountName,
    required String? link,
    required String? profile,
    required Files? image,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final userApi = getClient(token: token).getUserApi();

      final response = await userApi.saveUserProfile(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
        userProfileRequest: UserProfileRequest(
          (b) => b
            ..accountName = accountName
            ..link = link
            ..profile = profile
            ..imageUuid = image?.uuid,
        ),
      );
      return response.data;
    });

    return response;
  }
}

final userRepositoryProvider =
    Provider.autoDispose<UserRepository>((ref) => UserRepository());
