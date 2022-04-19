import 'dart:async';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_github_search/utils/extensions/dio.dart';

import '../constants/number.dart';
import '../constants/string.dart';
import '../models/api_response/base_api_response/base_api_response.dart';
import '../utils/api/connectivity_interceptor.dart';
import '../utils/api/curl_interceptor.dart';
import '../utils/api/header_interceptor.dart';
import '../utils/api/mock_interceptor.dart';
import '../utils/enums.dart';
import '../utils/exception.dart';
import 'abstract_api_client.dart';

/// ApiClient のシングルトンクラス。
/// インスタンスの未生成の場合は、コンストラクタメソッド内で
/// いろいろな設定を施したり、インターセプタを付けたりしている。
class ApiClient implements AbstractApiClient {
  factory ApiClient() {
    if (_instance == null) {
      _instance = ApiClient._();
      _dio.httpClientAdapter = DefaultHttpClientAdapter();
      _dio.options = BaseOptions(
        baseUrl: apiBaseURL,
        connectTimeout: connectionTimeoutMilliSeconds,
        receiveTimeout: receiveTimeoutMilliSeconds,
        validateStatus: (_) => true,
      );

      // クッキー関係のインターセプターを設定する。
      // if (cookieDir != null) {
      //   _cookieJar = PersistCookieJar(
      //     ignoreExpires: true,
      //     storage: FileStorage(cookieDir!.path),
      //   );
      //   _dio.interceptors.add(CookieManager(_cookieJar!));
      // } else {
      //   _cookieJar = CookieJar(ignoreExpires: true);
      //   _dio.interceptors.add(CookieManager(_cookieJar!));
      // }

      _dio.interceptors.addAll([
        ConnectivityInterceptor(),
        HeaderInterceptor(),
        // デバッグモードでは CurlInterceptor を追加
        if (kDebugMode) CurlInterceptor(),
        // モックで動作させる場合は MockInterceptor を追加
        if (const bool.fromEnvironment('mock'))
          InterceptorsWrapper(
            onRequest: MockInterceptor().onRequest,
            onResponse: (response, handler) => handler.next(response),
          )
      ]);
    }
    return _instance!;
  }

  ApiClient._();
  static final Dio _dio = Dio();
  static ApiClient? _instance;
  static CookieJar? _cookieJar;

  @override
  Future<BaseApiResponse> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        options: Options(headers: header ?? <String, dynamic>{}),
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      final statusCode = response.statusCode;
      final responseData = response.data;
      _validateStatusCode(statusCode);
      if (responseData == null) {
        throw DioError(requestOptions: response.requestOptions);
      }
      return BaseApiResponse.fromResponseData(responseData);
    } on DioError catch (dioError) {
      final errorType = dioError.type;
      final errorResponse = dioError.response;
      final dynamic error = dioError.error;
      if (errorType.isTimeout) {
        throw const ApiTimeoutException();
      }
      if (error is ErrorCode && error == ErrorCode.internetConnection) {
        throw const NetworkConnectionException();
      }
      if (errorResponse == null) {
        throw ApiException(
          message: 'API 通信に失敗しました。',
          detail: dioError.requestOptions.uri,
        );
      }
      throw ApiException(
        message: 'API 通信に失敗しました。',
        detail: dioError.requestOptions.uri,
      );
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on UnAuthorizedException {
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  /// ステータスコードを確認して例外をスローする。問題なければ何もしない。
  void _validateStatusCode(int? statusCode) {
    if (statusCode == 401) {
      throw const UnAuthorizedException();
    }
  }
}
