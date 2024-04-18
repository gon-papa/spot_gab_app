import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FileApi
void main() {
  final instance = Openapi().getFileApi();

  group(FileApi, () {
    // ファイルアップロード
    //
    // ファイルアップロードします。
    //
    //Future<ImageResponse> imageUpload(String xLanguage, String xUserAgent, BuiltList<MultipartFile> images) async
    test('test imageUpload', () async {
      // TODO
    });

  });
}
