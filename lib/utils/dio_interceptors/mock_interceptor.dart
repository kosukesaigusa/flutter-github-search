import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

/// 実際のレスポンスの代わりに対応する JSON の Mock データを返す
/// HTTP リクエストのインターセプタ。
class MockInterceptor extends Interceptor {
  static const baseDir = 'assets/json/mock/';
  static const extension = '.json';

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      // JSON ファイルを特定して読み込む。
      // {rootDir}/assets/json/mock/ 以下の階層に
      // API の URL パスに対応する JSON ファイルが保存されている想定。
      final jsonFilePath = _jsonFilePath(options.path);
      final byteData = await rootBundle.load(jsonFilePath);

      // JSON ファイルの内容を UTF-8 デコードして Map<String, dynamic> にキャストする
      final data = json.decode(
        utf8.decode(
          byteData.buffer.asUint8List(
            byteData.offsetInBytes,
            byteData.lengthInBytes,
          ),
        ),
      ) as Map<String, dynamic>;

      return handler.resolve(
        Response<Map<String, dynamic>>(
          data: data,
          // TODO: 期待されるステータスコードは API によって異なるはずだが
          //  どのようにして指定できるか調査して対応する。
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

  /// HTTP リクエストの URL パスから JSON ファイルのパスを特定する。
  /// RequestOptions.path は URL パスであって、apiBaseURL は含まれていない。
  String _jsonFilePath(String path) {
    var filePath = path;
    // 末尾スラッシュを削除する
    filePath = path.replaceFirst(RegExp(r'/$'), '');
    return baseDir + filePath + extension;
  }
}
