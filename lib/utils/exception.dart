import 'dart:io';

import '../constants/string.dart';

/// アプリ内で用いる例外
abstract class AbstractAppException implements Exception {
  AbstractAppException(this.message);

  final dynamic message;

  @override
  String toString() {
    if (message == null) {
      return generalErrorMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? generalErrorMessage : message as String;
    }
    return message.toString();
  }
}

/// アプリ内で用いる一般的な例外
class AppException implements AbstractAppException {
  const AppException(this.message);

  @override
  final dynamic message;

  @override
  String toString() {
    if (message == null) {
      return generalErrorMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? generalErrorMessage : message as String;
    }
    return message.toString();
  }
}

/// API に関する例外
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
      return apiErrorMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? apiErrorMessage : message as String;
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

  @override
  String toString() {
    if (message == null) {
      return generalErrorMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? generalErrorMessage : message as String;
    }
    return message.toString();
  }
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
      return apiTimeoutMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? apiTimeoutMessage : message as String;
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
      return apiNotFoundMessage;
    }
    if (message is String) {
      return (message as String).isEmpty ? apiNotFoundMessage : message as String;
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

/// Platform が iOS, Android のどちらにも該当しないときに使用する Exception
class UnsupportedPlatformException implements Exception {
  const UnsupportedPlatformException();

  @override
  String toString() => '${Platform.operatingSystem} はサポートされていません。';
}
