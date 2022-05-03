import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repo/repo.dart';
import '../base_response_data/base_response_data.dart';

part 'search_repo_response.freezed.dart';
part 'search_repo_response.g.dart';

@freezed
class SearchRepoResponse with _$SearchRepoResponse {
  const factory SearchRepoResponse({
    @Default(true) bool success,
    @Default('') String message,
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default(<Repo>[]) @JsonKey(name: 'items') List<Repo> repos,
  }) = _SearchRepoResponse;

  factory SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepoResponseFromJson(json);

  factory SearchRepoResponse.fromBaseResponseData(BaseResponseData baseResponseData) =>
      SearchRepoResponse.fromJson(
        <String, dynamic>{
          'success': baseResponseData.success,
          'message': baseResponseData.message,
          ...baseResponseData.data,
        },
      );
}
