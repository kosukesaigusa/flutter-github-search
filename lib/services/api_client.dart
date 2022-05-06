import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/string.dart';
import '../models/response_data/base_response_data/base_response_data.dart';
import '../models/response_data/response_result/response_result.dart';
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
  Future<ResponseResult> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _read(dioProvider).get<dynamic>(
        path,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      final statusCode = response.statusCode;
      final baseResponseData = BaseResponseData.fromDynamic(response.data);
      _validateStatusCode(
        statusCode: statusCode,
        message: baseResponseData.message,
      );
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: 'サーバとの通信に失敗しました。');
    } on FormatException {
      return const ResponseResult.failure(message: 'レスポンスの形式が正しくありません。');
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  @override
  Future<ResponseResult> put(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _read(dioProvider).put<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      final statusCode = response.statusCode;
      final baseResponseData = BaseResponseData.fromDynamic(response.data);
      _validateStatusCode(
        statusCode: statusCode,
        message: baseResponseData.message,
      );
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: 'サーバとの通信に失敗しました。');
    } on FormatException {
      return const ResponseResult.failure(message: 'レスポンスの形式が正しくありません。');
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  @override
  Future<ResponseResult> post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _read(dioProvider).post<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      final statusCode = response.statusCode;
      final baseResponseData = BaseResponseData.fromDynamic(response.data);
      _validateStatusCode(
        statusCode: statusCode,
        message: baseResponseData.message,
      );
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: 'サーバとの通信に失敗しました。');
    } on FormatException {
      return const ResponseResult.failure(message: 'レスポンスの形式が正しくありません。');
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  @override
  Future<ResponseResult> patch(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _read(dioProvider).patch<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      final statusCode = response.statusCode;
      final baseResponseData = BaseResponseData.fromDynamic(response.data);
      _validateStatusCode(
        statusCode: statusCode,
        message: baseResponseData.message,
      );
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: 'サーバとの通信に失敗しました。');
    } on FormatException {
      return const ResponseResult.failure(message: 'レスポンスの形式が正しくありません。');
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  @override
  Future<ResponseResult> delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _read(dioProvider).delete<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(headers: header),
        cancelToken: cancelToken,
      );
      final statusCode = response.statusCode;
      final baseResponseData = BaseResponseData.fromDynamic(response.data);
      _validateStatusCode(
        statusCode: statusCode,
        message: baseResponseData.message,
      );
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: 'サーバとの通信に失敗しました。');
    } on FormatException {
      return const ResponseResult.failure(message: 'レスポンスの形式が正しくありません。');
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  // TODO: ステータスコードのチェックを必要な分だけ書く
  /// ステータスコードを確認して例外をスローする。問題なければ何もしない。
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

  /// DioError を受けて、何かしらの Exception を return する
  /// 呼び出し側ではそれをスローする
  Exception _handleDioError(DioError dioError) {
    final errorType = dioError.type;
    final errorResponse = dioError.response;
    final dynamic error = dioError.error;
    if (errorType.isTimeout) {
      return const ApiTimeoutException();
    }
    if (error is ErrorCode && error == ErrorCode.internetConnection) {
      return const NetworkConnectionException();
    }
    if (errorResponse == null) {
      return ApiException(
        message: apiErrorMessage,
        detail: dioError.requestOptions.uri,
      );
    }
    return ApiException(
      message: apiErrorMessage,
      detail: dioError.requestOptions.uri,
    );
  }
}
