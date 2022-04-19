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
        if (kDebugMode) CurlInterceptor(),
        // モックで動作させる場合
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
      // TODO: ステータスコードのチェックを増やす
      if (statusCode == 401) {
        throw const UnAuthorizedException();
      }
      if (responseData == null) {
        throw DioError(requestOptions: response.requestOptions);
      }
      return BaseApiResponse.fromJson(responseData);
    } on DioError catch (error) {
      if (error.type.isTimeout) {
        throw const ApiErrorResponseException();
      }
      if (error.error is ErrorCode && error.error == ErrorCode.internetConnection) {
        throw const InternetConnectionException();
      }
      // タイムアウト等は早期リターン
      if (error.type.isTimeout) {
        throw const ApiErrorResponseException();
      }
      final errorResponse = error.response;
      if (errorResponse == null) {
        throw ApiNotFoundException(
          'サーバーとの通信に失敗しました。',
          error.requestOptions.uri,
        );
      }
      final statusCode = errorResponse.statusCode;
      // API のエラーレスポンス
      if (statusCode == 404) {
        throw ApiNotFoundException(null, error.response!.data.get('message'));
      }
      throw Exception(error.response!.data.get('message'));
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
}
