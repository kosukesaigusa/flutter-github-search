import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/api_response/base_api_response/base_api_response.dart';
import '../providers/common/dio.dart';
import '../utils/enums.dart';
import '../utils/exception.dart';
import '../utils/extensions/dio.dart';
import '../utils/extensions/string.dart';
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
      _validateStatusCode(
        statusCode: statusCode,
        message: _messageByResponseData(responseData),
      );
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
  /// void 以外の Never 型などの使用か Exception 型を使用するようなことも
  /// 少し検討したが、とりあえず void にすることにした。
  void _validateStatusCode({
    int? statusCode,
    String message = '',
  }) {
    if (statusCode == 400) {
      throw ApiException(message: message.ifIsEmpty('エラーが発生しました。'));
    }
    if (statusCode == 401) {
      throw const UnAuthorizedException();
    }
    if (statusCode == 403) {
      throw const ApiException();
    }
  }

  /// Map<String, dynamic>? な responseData に 'message' のキーが含まれていれば
  /// その文字列を、そうでなければ空文字を返す。
  String _messageByResponseData(Map<String, dynamic>? data) => (data?['message'] as String?) ?? '';
}
