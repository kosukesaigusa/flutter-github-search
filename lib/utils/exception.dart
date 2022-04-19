abstract class AbstractApiException implements Exception {
  AbstractApiException({
    this.message,
    this.detail,
  });

  final dynamic message;
  final dynamic detail;

  @override
  String toString() {
    if (message == null) {
      return 'API 通信時にエラーが発生しました。'
          '通信環境をご確認のうえ、再度実行してください。';
    }
    return message.toString();
  }
}

/// 一般的な API の例外
class ApiException implements AbstractApiException {
  const ApiException({
    this.message,
    this.detail,
  });

  @override
  final dynamic message;
  @override
  final dynamic detail;
}

/// API がタイムアウトした場合の例外
class ApiTimeoutException implements AbstractApiException {
  const ApiTimeoutException({
    this.message,
    this.detail,
  });

  @override
  final dynamic message;
  @override
  final dynamic detail;

  @override
  String toString() {
    if (message == null) {
      return 'API 通信がタイムアウトしました。通信環境をご確認のうえ、再度実行してください。';
    }
    return message.toString();
  }
}

/// API が 404 を返すときの例外
class ApiNotFoundException implements AbstractApiException {
  const ApiNotFoundException({
    this.message,
    this.detail,
  });

  @override
  final dynamic message;
  @override
  final dynamic detail;

  @override
  String toString() {
    if (message == null) {
      return 'リクエストした API が見つかりませんでした。';
    }
    return message.toString();
  }
}

/// ネットワーク通信がない場合の Exception
class NetworkConnectionException implements Exception {
  const NetworkConnectionException([
    this.message,
    this.detail,
  ]);

  final String? message;
  final dynamic detail;
}

/// 必要な権限がない場合の Exception
class UnAuthorizedException implements Exception {
  const UnAuthorizedException();
}
