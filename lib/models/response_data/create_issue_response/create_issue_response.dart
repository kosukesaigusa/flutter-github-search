import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';
import '../base_response_data/base_response_data.dart';

part 'create_issue_response.freezed.dart';
part 'create_issue_response.g.dart';

@freezed
class CreateIssueResponse with _$CreateIssueResponse {
  const factory CreateIssueResponse({
    @Default(true) bool success,
    @Default('') String message,
    required Issue issue,
  }) = _CreateIssueResponse;

  factory CreateIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateIssueResponseFromJson(json);

  factory CreateIssueResponse.fromBaseResponseData(BaseResponseData baseResponseData) =>
      CreateIssueResponse.fromJson(
        <String, dynamic>{
          'success': baseResponseData.success,
          'message': baseResponseData.message,
          // baseResponse.data がまるごとひとつの Issue オブジェクトに対応しているので
          // このように issue のキーを付ける必要がある。
          'issue': baseResponseData.data,
        },
      );
}
