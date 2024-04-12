import 'package:now_go_app/importer.dart';

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

class Result<T> {
  final T? data;
  final String? error;

  Result({this.data, this.error});

  bool get isSuccess => data != null;
  bool get isError => error != null;
}
