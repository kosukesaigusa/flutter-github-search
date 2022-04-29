import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/string.dart';
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
      throw _handleDioError(dioError);
    } on ApiException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<BaseApiResponse> put(
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
      final response = await _read(dioProvider).put<Map<String, dynamic>>(
        path,
        options: options ?? Options(headers: header),
        data: data,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
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
      throw _handleDioError(dioError);
    } on ApiException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<BaseApiResponse> post(
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
      final response = await _read(dioProvider).post<Map<String, dynamic>>(
        path,
        options: options ?? Options(headers: header),
        data: data,
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
      throw _handleDioError(dioError);
    } on ApiException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<BaseApiResponse> patch(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _read(dioProvider).patch<Map<String, dynamic>>(
        path,
        options: options ?? Options(headers: header),
        data: data,
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
      throw _handleDioError(dioError);
    } on ApiException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<BaseApiResponse> delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _read(dioProvider).delete<Map<String, dynamic>>(
        path,
        options: options ?? Options(headers: header),
        data: data,
      );
      final statusCode = response.statusCode;
      final responseData = response.data ?? <String, dynamic>{};
      _validateStatusCode(
        statusCode: statusCode,
        message: _messageByResponseData(responseData),
      );
      return BaseApiResponse.fromResponseData(responseData);
    } on DioError catch (dioError) {
      throw _handleDioError(dioError);
    } on ApiException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on Exception catch (e) {
      throw Exception(e.toString());
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

  /// Map<String, dynamic>? な responseData に 'message' のキーが含まれていれば
  /// その文字列を、そうでなければ空文字を返す。
  String _messageByResponseData(Map<String, dynamic>? data) => (data?['message'] as String?) ?? '';
}
