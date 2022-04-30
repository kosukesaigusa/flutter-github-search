import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_issue_response.freezed.dart';
part 'create_issue_response.g.dart';

@freezed
class CreateIssueResponse with _$CreateIssueResponse {
  const factory CreateIssueResponse({
    required int id,
    @JsonKey(name: 'html_url') required String htmlUrl,
  }) = _CreateIssueResponse;

  factory CreateIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateIssueResponseFromJson(json);
}
