import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';
import '../base_response_data/base_response_data.dart';

part 'fetch_issues_response.freezed.dart';
part 'fetch_issues_response.g.dart';

@freezed
class FetchIssuesResponse with _$FetchIssuesResponse {
  const factory FetchIssuesResponse({
    @Default(true) bool success,
    @Default('') String message,
    @Default(<Issue>[]) List<Issue> items,
  }) = _FetchIssuesResponse;

  factory FetchIssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchIssuesResponseFromJson(json);

  factory FetchIssuesResponse.fromBaseResponseData(BaseResponseData baseResponseData) =>
      FetchIssuesResponse.fromJson(
        <String, dynamic>{
          'success': baseResponseData.success,
          'message': baseResponseData.message,
          ...baseResponseData.data,
        },
      );
}
