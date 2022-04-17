import '../enums.dart';
import '../exception.dart';

extension ExceptionExt on Exception {
  ErrorCode get errorCode {
    if (this is InternetConnectionException) {
      return ErrorCode.internetConnection;
    }
    if (this is UnAuthorizedException) {
      return ErrorCode.unauthorized;
    }
    return ErrorCode.exception;
  }
}
