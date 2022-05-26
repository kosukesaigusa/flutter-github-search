import 'package:dio/dio.dart';

import '../api.dart';
import '../connectivity.dart';

/// ネットワーク接続を確認しネットワーク接続がない場合はエラーを出す
class ConnectivityInterceptor extends Interceptor {
  ConnectivityInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!await isNetworkConnected) {
      return handler.reject(
        DioError(
          type: DioErrorType.other,
          error: ErrorCode.networkNotConnected,
          requestOptions: options,
        ),
      );
    }
    return handler.next(options);
  }
}
