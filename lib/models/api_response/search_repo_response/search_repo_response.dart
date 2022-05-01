import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json_converter.dart';
import '../../repo/repo.dart';

part 'search_repo_response.freezed.dart';
part 'search_repo_response.g.dart';

@freezed
class SearchRepoResponse with _$SearchRepoResponse {
  const factory SearchRepoResponse({
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default(<Repo>[]) @SearchRepoResponseItemsConverter() List<Repo> items,
  }) = _SearchRepoResponse;

  factory SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepoResponseFromJson(json);
}
