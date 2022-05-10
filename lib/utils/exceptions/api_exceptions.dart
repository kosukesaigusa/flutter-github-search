import 'base.dart';

/// HTTP 通信時に使用する例外型。
class ApiException extends AppException implements Exception {
  const ApiException({
    String? code,
    String? message,
    String defaultMessage = 'サーバとの通信に失敗しました。',
  }) : super(
          code: code,
          message: message,
          defaultMessage: defaultMessage,
        );
}

/// HTTP リクエストで 403 が発生した場合の例外
class UnauthorizedException extends ApiException {
  const UnauthorizedException({String? message})
      : super(
          code: '403',
          message: message,
          defaultMessage: '指定した操作を行う権限がありません。',
        );
}

/// HTTP リクエストで 404 が発生した場合の例外
class ApiNotFoundException extends ApiException {
  const ApiNotFoundException({String? message})
      : super(
          code: '404',
          message: message,
          defaultMessage: 'リクエストした API が見つかりませんでした。',
        );
}

/// HTTP リクエストがタイムアウトした場合の例外
class ApiTimeoutException extends ApiException {
  const ApiTimeoutException({String? message})
      : super(
          message: message,
          defaultMessage: 'API 通信がタイムアウトしました。'
              '通信環境をご確認のうえ、再度実行してください。',
        );
}

/// HTTP リクエスト時のネットワーク接続に問題がある場合の例外
class NetworkNotConnectedException extends ApiException {
  const NetworkNotConnectedException({String? message})
      : super(
          message: message,
          defaultMessage: 'ネットワーク接続がありません。',
        );
}
