import 'dart:io';

import 'package:now_go_app/importer.dart';
import 'package:http_parser/http_parser.dart';

class UserRepository extends BaseRepository {
  UserRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Result<UserResponse?>> getMe() async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      print(token);
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
    required File? image,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final userApi = getClient(token: token).getUserApi();

      final response = await userApi.saveUserProfile(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
        accountName: accountName,
        link: link,
        profile: profile,
        image: image != null
            ? await MultipartFile.fromFile(
                image.path,
                contentType: MediaType(
                  'image',
                  'jpeg',
                ),
              )
            : null,
      );
      return response.data;
    });

    return response;
  }
}

final userRepositoryProvider =
    Provider.autoDispose<UserRepository>((ref) => UserRepository());