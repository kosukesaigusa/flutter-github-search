import 'package:freezed_annotation/freezed_annotation.dart';

import '../../issue/issue.dart';
import '../base_response_data/base_response_data.dart';

part 'issues_response.freezed.dart';
part 'issues_response.g.dart';

@freezed
class IssuesResponse with _$IssuesResponse {
  const factory IssuesResponse({
    @Default(true) bool success,
    @Default('') String message,
    @Default(<Issue>[]) @JsonKey(name: 'items') List<Issue> issues,
  }) = _IssuesResponse;

  factory IssuesResponse.fromJson(Map<String, dynamic> json) => _$IssuesResponseFromJson(json);

  factory IssuesResponse.fromBaseResponseData(BaseResponseData baseResponseData) =>
      IssuesResponse.fromJson(
        <String, dynamic>{
          'success': baseResponseData.success,
          'message': baseResponseData.message,
          ...baseResponseData.data,
        },
      );
}
