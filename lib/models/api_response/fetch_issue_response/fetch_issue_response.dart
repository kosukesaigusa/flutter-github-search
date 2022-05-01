import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';
import '../../json_converter.dart';

part 'fetch_issue_response.freezed.dart';
part 'fetch_issue_response.g.dart';

@freezed
class FetchIssueResponse with _$FetchIssueResponse {
  const factory FetchIssueResponse({
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default(<Issue>[]) @FetchIssueResponseItemsConverter() List<Issue> items,
  }) = _FetchIssueResponse;

  factory FetchIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchIssueResponseFromJson(json);
}
