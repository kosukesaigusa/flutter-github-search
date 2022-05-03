import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';
import '../base_response_data/base_response_data.dart';

part 'issue_response.freezed.dart';
part 'issue_response.g.dart';

@freezed
class IssueResponse with _$IssueResponse {
  const factory IssueResponse({
    @Default(true) bool success,
    @Default('') String message,
    required Issue issue,
  }) = _IssueResponse;

  factory IssueResponse.fromJson(Map<String, dynamic> json) => _$IssueResponseFromJson(json);

  factory IssueResponse.fromBaseResponseData(BaseResponseData baseResponseData) =>
      IssueResponse.fromJson(
        <String, dynamic>{
          'success': baseResponseData.success,
          'message': baseResponseData.message,
          // baseResponse.data がまるごとひとつの Issue オブジェクトに対応しているので
          // このように issue のキーを付ける必要がある。
          'issue': baseResponseData.data,
        },
      );
}
