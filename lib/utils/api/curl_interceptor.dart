import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// HTTP リクエストの curl コマンドを生成する
class CurlInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    debugPrint('*** Request ***');
    final stringBuffer = StringBuffer();
    var query = '';
    if (options.method == 'GET' && options.queryParameters.isNotEmpty) {
      query =
          '?${options.queryParameters.entries.map((e) => '${e.key}=${e.value}').toList().join('&')}';
    }
    final requestUrl = '${options.baseUrl}${options.path}$query';
    stringBuffer.write('curl --request ${options.method} \'$requestUrl\'');
    for (final key in options.headers.keys) {
      stringBuffer.write(' -H \'$key: ${options.headers[key]}\'');
    }
    if (options.data != null && options.data is Map) {
      stringBuffer.write(' --data-binary \'${jsonEncode(options.data)}\'');
    }
    // SSL 証明書のエラーを無視する
    stringBuffer.write(' --insecure');
    debugPrint(stringBuffer.toString());
    super.onRequest(options, handler);
  }
}
