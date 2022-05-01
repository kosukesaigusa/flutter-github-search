import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/number.dart';
import '../../constants/string.dart';
import '../../utils/api/connectivity_interceptor.dart';
import '../../utils/api/curl_interceptor.dart';
import '../../utils/api/header_interceptor.dart';
import '../../utils/api/mock_interceptor.dart';
import '../../utils/api/response_interceptor.dart';
import 'cookie.dart';

/// Dio のインスタンスを各種設定を済ませた状態で提供するプロバイダ
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.httpClientAdapter = DefaultHttpClientAdapter();
  dio.options = BaseOptions(
    baseUrl: apiBaseURL,
    connectTimeout: connectionTimeoutMilliSeconds,
    receiveTimeout: receiveTimeoutMilliSeconds,
    validateStatus: (_) => true,
  );
  dio.interceptors.addAll(<Interceptor>[
    ConnectivityInterceptor(),
    HeaderInterceptor(),
    CookieManager(ref.read(cookieJarProvider)),
    // デバッグモードでは CurlInterceptor を追加
    if (kDebugMode) CurlInterceptor(),
    // デバッグモードでは ResponseInterceptor を追加
    if (kDebugMode) ResponseInterceptor(),
    // モックで動作させる場合は MockInterceptor を追加
    if (const bool.fromEnvironment('mock'))
      InterceptorsWrapper(
        onRequest: MockInterceptor().onRequest,
        onResponse: (response, handler) => handler.next(response),
      )
  ]);
  return dio;
});
