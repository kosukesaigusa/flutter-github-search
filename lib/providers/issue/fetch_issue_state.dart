import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/issue/issue.dart';
import '../../utils/enums.dart';

part 'fetch_issue_state.freezed.dart';

@freezed
class FetchIssueState with _$FetchIssueState {
  const factory FetchIssueState({
    @Default(false) bool loading,
    @Default(FetchResponseErrorEnum.none) FetchResponseErrorEnum error,
    @Default(false) bool canShowPreviousPage,
    @Default(false) bool canShowNextPage,
    @Default(1) int currentPage,
    @Default(10) int perPage,
    @Default(<Issue>[]) List<Issue> issues,
  }) = _FetchIssueState;
}
