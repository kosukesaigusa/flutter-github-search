import 'package:flutter_github_search/models/github_repository/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json_converter.dart';

part 'search_api_response.freezed.dart';
part 'search_api_response.g.dart';

@freezed
class SearchApiResponse with _$SearchApiResponse {
  const factory SearchApiResponse({
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default(<GitHubRepository>[]) @SearchApiResponseDataConverter() List<GitHubRepository> items,
  }) = _SearchApiResponse;

  factory SearchApiResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchApiResponseFromJson(json);
}
