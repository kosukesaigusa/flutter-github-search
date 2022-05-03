import 'package:dio/dio.dart';

import '../models/response_data/base_response_data/base_response_data.dart';

/// dio.dart の abstract class Dio の形式に沿った
/// API クライアントの抽象クラス
abstract class AbstractApiClient {
  Future<BaseResponseData> get(
    String path, {
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  });

  Future<BaseResponseData> put(
    String path, {
    Map<String, dynamic> data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  });

  Future<BaseResponseData> patch(
    String path, {
    Map<String, dynamic> data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  });

  Future<BaseResponseData> post(
    String path, {
    Map<String, dynamic> data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  });

  Future<BaseResponseData> delete(
    String path, {
    Map<String, dynamic> data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    Options options,
    CancelToken cancelToken,
  });
}
