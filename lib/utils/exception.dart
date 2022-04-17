abstract class ApiException implements Exception {
  ApiException({
    this.message,
    this.detail,
  });

  final dynamic message;
  final dynamic detail;

  @override
  String toString() {
    if (message == null) {
      return '通信エラーが発生しました。通信環境をご確認のうえ、再度実行してください。';
    }
    return message.toString();
  }
}

/// API のエラーレスポンス
class ApiErrorResponseException implements ApiException {
  const ApiErrorResponseException({
    this.message,
    this.detail,
  });

  @override
  final dynamic message;
  @override
  final dynamic detail;
}

/// API の NotFound エラーレスポンス
class ApiNotFoundException implements ApiException {
  const ApiNotFoundException([
    this._message,
    this.detail,
  ]);

  final String? _message;
  @override
  final dynamic detail;

  @override
  String get message => _message ?? '通信エラー: ネットワークを確認してください。';
}

/// ネットワーク通信がない場合の Exception
class InternetConnectionException implements Exception {
  const InternetConnectionException([
    this.message,
    this.detail,
  ]);

  final String? message;
  final dynamic detail;
}

class UnAuthorizedException implements Exception {
  const UnAuthorizedException();
}
