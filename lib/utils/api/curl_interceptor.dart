import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// API リクエストの cURL コマンドを生成する
class CurlInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    debugPrint('*** Curl ***');
    final curl = StringBuffer();
    var query = '';
    if (options.method == 'GET' && options.queryParameters.isNotEmpty) {
      query =
          '?${options.queryParameters.entries.map((e) => '${e.key}=${e.value}').toList().join('&')}';
    }
    final requestUrl = '${options.baseUrl}${options.path}$query';
    curl.write('curl --request ${options.method} \'$requestUrl\'');
    for (final key in options.headers.keys) {
      curl.write(' -H \'$key: ${options.headers[key]}\'');
    }
    if (options.data != null && options.data is Map) {
      curl.write(' --data-binary \'${jsonEncode(options.data)}\'');
    }
    curl.write(' --insecure');
    debugPrint(curl.toString());
    return handler.next(options);
  }
}
