import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

/// 借字で実装した。
/// 用途・必要性の検討中。
@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult.success({
    @Default(true) bool success,
    @Default('') String message,
  }) = _ApiResult;

  /// その他のエラー
  const factory ApiResult.failure({
    required Exception exception,
    @Default('') String message,
  }) = Failure;
}
