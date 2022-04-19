import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_github_search/utils/extensions/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/api_response/base_api_response/base_api_response.dart';
import '../providers/dio/dio.dart';
import '../utils/enums.dart';
import '../utils/exception.dart';
import 'abstract_api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient(ref.read));

class ApiClient implements AbstractApiClient {
  ApiClient(this._read);
  final Reader _read;

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
      final response = await _read(dioProvider).get<Map<String, dynamic>>(
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
