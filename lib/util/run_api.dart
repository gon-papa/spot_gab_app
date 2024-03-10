import 'package:spot_gab_app/importer.dart';

typedef OnError = Function(
  Exception exception,
  String message,
);

class RunApi {
  final Logger logger = Logger();
  final ref = ProviderContainer();

  // 全てのAPIリクエストを実行する際に共通で行う処理をまとめた関数
  Future<Object?> run<T>({
    required Future<T> Function() onSuccess,
    OnError? onError,
    StateController<bool>? isInProgressController,
  }) async {
    final defaultError = ref.read(errorListnerProviders).defaultError;
    try {
      _updateLoadingState(isInProgressController, true);
      final result = await onSuccess();
      return result;
    } on DioException catch (error) {
      logger.e(error);
      if (error.response?.data['detail'] != null) {
        _handleDioException(onError, error);
        logger.e(error);
        return null;
      } else {
        onError?.call(error, defaultError);
        logger.e(error);
        return null;
      }
    } on Exception catch (error) {
      logger.e(error);
      onError?.call(error, defaultError);
      return null;
    } finally {
      _updateLoadingState(isInProgressController, false);
    }
  }

// ローディング状態を更新する
  void _updateLoadingState(StateController<bool>? controller, bool isLoading) {
    if (controller?.mounted == true) {
      controller?.state = isLoading;
    }
  }

  void _handleDioException(OnError? onError, DioException error) async {
    logger.e(error);
    // TODO:401ならリフレッシュトークンを使って再ログインを試みる
    if (error.response?.statusCode == 401) {
      final refreshToken = ref.read(secure_token_provider).getRefreshToken();
      if (refreshToken == null) {
        // リフレッシュトークンがない場合はログアウト
        ref.read(authRepositoryProvider).signOut();
        return;
      }
      // final response = await ref.read(authRepositoryProvider).refreshToken(
      // refreshToken: refreshToken,
      // );
      // if(res.status !== 200) {
      // logout();
      // }
      // 再度、リクエストを実行
      // return run<T>(onSuccess: onSuccess, onError: onError);
    } else {
      onError?.call(error, error.response?.data['detail'][0]['msg']);
    }
  }
}

final runApiProvider = Provider<RunApi>((ref) {
  return RunApi();
});
