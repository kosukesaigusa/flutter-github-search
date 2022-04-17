import 'package:dio/dio.dart';

extension DioErrorTypeExt on DioErrorType {
  /// DioErrorType がタイムアウトに該当するかどうか
  bool get isTimeout => [
        DioErrorType.connectTimeout,
        DioErrorType.receiveTimeout,
        DioErrorType.sendTimeout,
      ].contains(this);
}
