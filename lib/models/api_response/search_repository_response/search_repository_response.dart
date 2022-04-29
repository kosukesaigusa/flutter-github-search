import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json_converter.dart';
import '../../repo/repo.dart';

part 'search_repository_response.freezed.dart';
part 'search_repository_response.g.dart';

@freezed
class SearchRepositoryResponse with _$SearchRepositoryResponse {
  const factory SearchRepositoryResponse({
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default(<Repo>[]) @SearchRepositoryResponseDataConverter() List<Repo> items,
  }) = _SearchRepositoryResponse;

  factory SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryResponseFromJson(json);
}
