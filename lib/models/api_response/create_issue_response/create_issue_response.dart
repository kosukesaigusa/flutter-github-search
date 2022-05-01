import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';

part 'create_issue_response.freezed.dart';
part 'create_issue_response.g.dart';

@freezed
class CreateIssueResponse with _$CreateIssueResponse {
  const factory CreateIssueResponse({
    @JsonKey(name: 'data') required Issue issue,
  }) = _CreateIssueResponse;

  factory CreateIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateIssueResponseFromJson(json);
}
