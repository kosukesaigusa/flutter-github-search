import 'package:dio/dio.dart';

import '../models/api_response/search_api_response/search_api_response.dart';

/// dio.dart の abstract class Dio の形式に沿った
/// API クライアントの抽象クラス
abstract class AbstractApiClient {
  Future<SearchApiResponse> get(
    String path, {
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> header,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  });

  // Future<SearchApiResponse> put(
  //   String path, {
  //   Map<String, dynamic> data,
  //   Map<String, dynamic> queryParameters,
  //   Map<String, dynamic> header,
  //   Options options,
  //   CancelToken cancelToken,
  //   ProgressCallback onSendProgress,
  //   ProgressCallback onReceiveProgress,
  // });

  // Future<SearchApiResponse> patch(
  //   String path, {
  //   Map<String, dynamic> data,
  //   Map<String, dynamic> queryParameters,
  //   Map<String, dynamic> header,
  //   CancelToken cancelToken,
  //   ProgressCallback onReceiveProgress,
  // });

  // Future<SearchApiResponse> post(
  //   String path, {
  //   Map<String, dynamic> data,
  //   Map<String, dynamic> queryParameters,
  //   Map<String, dynamic> header,
  //   Options options,
  //   CancelToken cancelToken,
  //   ProgressCallback onSendProgress,
  //   ProgressCallback onReceiveProgress,
  // });

  // Future<SearchApiResponse> delete(
  //   String path, {
  //   Map<String, dynamic> data,
  //   Map<String, dynamic> queryParameters,
  //   Map<String, dynamic> header,
  //   Options options,
  //   CancelToken cancelToken,
  // });
}
