import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/api_response/search_repo_response/search_repo_response.dart';
import '../../models/repo/repo.dart';
import '../../repositories/search_repo.dart';
import '../../utils/enums.dart';
import '../../utils/exception.dart';
import 'search_repo_state.dart';

/// GitHub リポジトリの検索条件や検索結果を操作・保持する
/// StateNotifier を提供するプロバイダ。
/// 検索ワードやページャなどのそれぞれの要素が互いに割と複雑に影響しあっているので、
/// バラバラの StateProvider や FutureProvider で記述していたのから、
/// StateNotifier で記述することにした。
final searchRepoStateNotifierProvider =
    StateNotifierProvider.autoDispose<SearchRepoStateNotifier, SearchRepoState>(
  (ref) => SearchRepoStateNotifier(ref.read),
);

class SearchRepoStateNotifier extends StateNotifier<SearchRepoState> {
  SearchRepoStateNotifier(this._read) : super(const SearchRepoState()) {
    _searchRepositories();
  }

  final Reader _read;

  /// ListView.builder に指定するスクロールコントローラ
  final scrollController = ScrollController();

  /// GET /search/repositories API をコールして検索結果をstate に保持する
  Future<void> _searchRepositories() async {
    if (state.q.isEmpty) {
      state = state.copyWith(loading: false, error: FetchResponseErrorEnum.emptyQ);
      return;
    }
    if (state.currentPage < 1) {
      state = state.copyWith(loading: false, error: FetchResponseErrorEnum.pageNotValid);
      return;
    }
    if (state.perPage < 1) {
      state = state.copyWith(loading: false, error: FetchResponseErrorEnum.perPageNotValid);
      return;
    }
    try {
      state = state.copyWith(loading: true);
      final response = await _read(searchRepoRepositoryProvider).fetchRepositories(
        q: state.q,
        page: state.currentPage,
        perPage: state.perPage,
      );
      _updateStateByResponse(response);
    } on ApiException {
      state = state.copyWith(error: FetchResponseErrorEnum.apiError);
    } on Exception {
      state = state.copyWith(error: FetchResponseErrorEnum.other);
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  /// 検索ワードを変更して再度 Search Repository API をコールする
  void updateSearchWord(String q) {
    state = state.copyWith(q: q, currentPage: 1, repos: <Repo>[]);
    _resetPagerStatus();
    _animateToTop();
    _searchRepositories();
  }

  /// 前のページへ
  void showPreviousPage() {
    if (state.currentPage < 2) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage - 1);
    _resetPagerStatus();
    _animateToTop();
    _searchRepositories();
  }

  /// 次のページへ
  void showNextPage() {
    if (state.currentPage >= state.maxPage) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage + 1);
    _resetPagerStatus();
    _animateToTop();
    _searchRepositories();
  }

  /// GET /search/repository の結果に応じて更新すべき状態を更新する
  void _updateStateByResponse(SearchRepoResponse response) {
    state = state.copyWith(
      totalCount: response.totalCount,
      maxPage: (response.totalCount / state.perPage).ceil(),
      repos: response.items,
    );
    _resetPagerStatus();
  }

  /// ページャに関わる状態を更新する
  void _resetPagerStatus() {
    state = state.copyWith(
      canShowPreviousPage: state.currentPage > 1,
      canShowNextPage: state.currentPage < state.maxPage,
    );
  }

  /// ページ切替時に ListView の上までスクロールする
  void _animateToTop() {
    if (!scrollController.hasClients) {
      return;
    }
    scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 200),
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
