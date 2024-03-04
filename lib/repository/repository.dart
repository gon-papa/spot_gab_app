import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class BaseRepository {
  BaseRepository();

  Openapi getClient({String? token}) {
    return Openapi(
      basePathOverride: const String.fromEnvironment('api_url'),
      interceptors: [
        if (token != null)
          InterceptorsWrapper(
            onRequest: (options, handler) {
              options.headers['Authorization'] = 'Bearer $token';
              return handler.next(options);
            },
          ),
      ],
    );
  }
}
