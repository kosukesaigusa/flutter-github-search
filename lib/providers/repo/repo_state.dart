import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_state.freezed.dart';

/// GitHub リポジトリの検索条件に関する State
@freezed
class RepoSearchState with _$RepoSearchState {
  const factory RepoSearchState({
    @Default(false) bool canShowPreviousPage,
    @Default(false) bool canShowNextPage,
    @Default('') String q,
    @Default(1) int currentPage,
    @Default(10) int perPage,
    @Default(0) int totalCount,
    @Default(1) int maxPage,
  }) = _RepoSearchState;
}
