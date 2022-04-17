import 'package:dio/dio.dart';

import '../connectivity.dart';
import '../enums.dart';

/// ネットワーク接続を確認しネットワーク接続がない場合はエラーを出す
class ConnectivityInterceptor extends Interceptor {
  ConnectivityInterceptor();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!await isNetworkConnected) {
      return handler.reject(
        DioError(
          type: DioErrorType.other,
          error: ErrorCode.internetConnection,
          requestOptions: options,
        ),
      );
    }
    return handler.next(options);
  }
}
