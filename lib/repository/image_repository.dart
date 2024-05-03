import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:http_parser/http_parser.dart';
import 'package:now_go_app/importer.dart';

class FileRepository extends BaseRepository {
  FileRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);
  final ref = ProviderContainer();

  Future<Result<ImageResponse?>> uploadImage({
    required List<File> images,
  }) async {
    final response = await _helper.run(onSuccess: () async {
      final token = await ref.read(secure_token_provider).getToken();
      final fileClient = getClient(token: token).getFileApi();
      final response = await fileClient.imageUpload(
        xLanguage: "ja",
        xUserAgent: const String.fromEnvironment("user_agent"),
        images: BuiltList<MultipartFile>.from(
          images.map(
            (file) => MultipartFile.fromFileSync(
              file.path,
              contentType: MediaType.parse("image/jpeg"),
            ),
          ),
        ),
      );
      return response.data;
    });

    return response;
  }
}

final fileRepositoryProvider =
    Provider.autoDispose<FileRepository>((ref) => FileRepository());
