import '../../constants/string.dart';
import 'base.dart';

/// AbstractAppException 型を interface として実装した
/// API 通信時に発生する汎用的な例外。
/// アプリ内の他の API 関係の例外もこの ApiException を extend して、
/// デフォルトのメッセージ、特有のフィールドや toString() の挙動を定義する。
class ApiException implements AbstractAppException {
  const ApiException({
    this.statusCode,
    this.message,
  });

  final int? statusCode;

  @override
  final String? message;

  @override
  String toString() {
    if (statusCode == null) {
      return message ?? apiExceptionMessage;
    }
    return '[$statusCode] $message';
  }
}

/// API で 404 が発生した場合の例外
class ApiNotFoundException extends ApiException {
  const ApiNotFoundException();

  @override
  int get statusCode => 404;

  @override
  String get message => '[$statusCode] $apiNotFoundExceptionMessage';
}

/// API で 403 が発生した場合の例外
class UnauthorizedException extends ApiException {
  const UnauthorizedException();

  @override
  int get statusCode => 401;

  @override
  String get message => '[$statusCode] $unauthorizedExceptionMessage';
}

/// API がタイムアウトした場合の例外
class ApiTimeoutException extends ApiException {
  const ApiTimeoutException();

  @override
  String get message => apiTimeoutExceptionMessage;
}

/// ネットワーク接続に問題がある場合の例外
class NetworkNotConnectedException extends ApiException {
  const NetworkNotConnectedException();

  @override
  String get message => networkNotConnectedExceptionMessage;
}
