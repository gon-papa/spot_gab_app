import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PostApi
void main() {
  final instance = Openapi().getPostApi();

  group(PostApi, () {
    // 投稿
    //
    // 投稿します。
    //
    //Future<JsonResponse> post(String xLanguage, String xUserAgent, PostRequest postRequest) async
    test('test post', () async {
      // TODO
    });

  });
}
