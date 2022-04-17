import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

/// assets 内のJson から[Response]を作って返す
///
/// ステータスコードは 200
class MockInterceptor extends Interceptor {
  static const _jsonDir = 'assets/json/mock/';
  static const _jsonExtension = '.json';

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      var path = options.path;
      // /api を削除
      path = path.replaceFirst(RegExp(r'^/api'), '');
      // バージョンを削除
      path = path.replaceFirst(RegExp(r'^/v[1-9]/'), '');
      // ? 以降を削除
      path = path.split('?').first;

      // 最後のスラッシュを削除
      path = path.replaceFirst(RegExp(r'/$'), '');

      final resourcePath = _jsonDir + path + _jsonExtension;
      final data = await rootBundle.load(resourcePath);
      final map = json.decode(
        utf8.decode(
          data.buffer.asUint8List(
            data.offsetInBytes,
            data.lengthInBytes,
          ),
        ),
      ) as Map<String, dynamic>;

      return handler.resolve(
        Response<Map<String, dynamic>>(
          data: map,
          statusCode: 200,
          requestOptions: options,
        ),
      );
    } on Exception {
      return handler.resolve(
        Response<Map<String, dynamic>>(
          data: null,
          statusCode: 404,
          requestOptions: options,
        ),
      );
    }
  }
}
