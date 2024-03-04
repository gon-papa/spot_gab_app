import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:spot_gab_app/const/util_const.dart';

typedef OnError = Function(
  Exception exception,
  String message,
);

class RunApi {
  final Logger logger = Logger();

  // 全てのAPIリクエストを実行する際に共通で行う処理をまとめた関数
  Future<Object?> run<T>({
    required Future<T> Function() onSuccess,
    OnError? onError,
    StateController<bool>? isInProgressController,
  }) async {
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
        onError?.call(error, defaultMsg);
        logger.e(error);
        return null;
      }
    } on Exception catch (error) {
      logger.e(error);
      onError?.call(error, defaultMsg);
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

  void _handleDioException(OnError? onError, DioException error) {
    logger.e(error);
    // TODO:401ならリフレッシュトークンを使って再ログインを試みる
    if (error.response?.statusCode == 401) {
      // res = refreshToken();
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
