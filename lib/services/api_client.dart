import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/string.dart';
import '../models/response_data/base_response_data/base_response_data.dart';
import '../models/response_data/response_result/response_result.dart';
import '../providers/common/dio.dart';
import '../utils/enums.dart';
import '../utils/exceptions/api_exceptions.dart';
import '../utils/extensions/dio.dart';
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
      final baseResponseData = _parseResponse(response);
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: networkNotConnected);
    } on FormatException {
      return const ResponseResult.failure(message: responseFormatNotValid);
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
      final baseResponseData = _parseResponse(response);
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: networkNotConnected);
    } on FormatException {
      return const ResponseResult.failure(message: responseFormatNotValid);
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
      final baseResponseData = _parseResponse(response);
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: networkNotConnected);
    } on FormatException {
      return const ResponseResult.failure(message: responseFormatNotValid);
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
      final baseResponseData = _parseResponse(response);
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: networkNotConnected);
    } on FormatException {
      return const ResponseResult.failure(message: responseFormatNotValid);
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
      final baseResponseData = _parseResponse(response);
      return ResponseResult.success(data: baseResponseData);
    } on DioError catch (dioError) {
      final exception = _handleDioError(dioError);
      return ResponseResult.failure(message: exception.toString());
    } on ApiException catch (e) {
      return ResponseResult.failure(message: e.toString());
    } on SocketException {
      return const ResponseResult.failure(message: networkNotConnected);
    } on FormatException {
      return const ResponseResult.failure(message: responseFormatNotValid);
    } on Exception catch (e) {
      return ResponseResult.failure(message: e.toString());
    }
  }

  /// Dio の Response を受け取り、
  /// ステータスコードと success を確認して問題があれば例外をスローする。
  /// 問題がなければ dynamic 型のレスポンスボディを BaseResponseData に変換して返す。
  BaseResponseData _parseResponse(Response<dynamic> response) {
    final statusCode = response.statusCode;
    final baseResponseData = BaseResponseData.fromDynamic(response.data);
    _validateResponse(statusCode: statusCode, data: baseResponseData);
    return baseResponseData;
  }

  /// レスポンスのステータスコードを検証する。
  /// レスポンスボディに 'message' フィールドがある場合はそれを、
  /// そうでない場合は適当なエラーメッセージを例外型の message に格納してスローする
  void _validateResponse({
    required int? statusCode,
    required BaseResponseData data,
  }) {
    final message = data.message;
    if (statusCode == 400) {
      throw ApiException(message: message);
    }
    if (statusCode == 401) {
      throw UnauthorizedException(message: message);
    }
    if (statusCode == 404) {
      throw ApiNotFoundException(message: message);
    }
    // statusCode が null のときはとりあえず 400 番扱いで良いか確認が必要
    // そもそも、それがどのような場合かは特定できていない。
    if ((statusCode ?? 400) >= 400) {
      throw ApiException(message: message);
    }
    if (!data.success) {
      throw ApiException(message: message);
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
      return const NetworkNotConnectedException();
    }
    if (errorResponse == null) {
      return const ApiException();
    }
    return const ApiException();
  }
}
