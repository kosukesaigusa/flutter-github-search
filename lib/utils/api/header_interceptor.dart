import 'package:dio/dio.dart';

/// ヘッダーに認証情報などを付加する
class HeaderInterceptor extends Interceptor {
  HeaderInterceptor([this.overwriteUrl]);

  String? overwriteUrl;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Referrer を付加する
    options.headers['Referrer'] = overwriteUrl ?? options.baseUrl;
    // Origin を付加する
    options.headers['Origin'] = options.baseUrl;
    return handler.next(options);
  }
}
