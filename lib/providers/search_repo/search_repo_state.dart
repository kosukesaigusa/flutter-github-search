import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/repo/repo.dart';
import '../../utils/enums.dart';

part 'search_repo_state.freezed.dart';

@freezed
class SearchRepoState with _$SearchRepoState {
  const factory SearchRepoState({
    @Default(false) bool loading,
    @Default(SearchRepoErrorEnum.none) SearchRepoErrorEnum error,
    @Default(false) bool canShowPreviousPage,
    @Default(false) bool canShowNextPage,
    @Default('') String q,
    @Default(1) int currentPage,
    @Default(10) int perPage,
    @Default(0) int totalCount,
    @Default(1) int maxPage,
    @Default(<Repo>[]) List<Repo> repos,
  }) = _SearchRepoState;
}
