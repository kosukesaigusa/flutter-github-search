import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../models/repo/repo.dart';
import '../../repositories/search_github_repository.dart';
import '../../utils/exception.dart';
import 'repo_state.dart';

/// GET /search/repositories API をコールして、
/// 検索にヒットした GitHub リポジトリの一覧を返す。
final reposFutureProvider = FutureProvider.autoDispose<List<Repo>>((ref) async {
  final q = ref.watch(searchReposStateNotifierProvider.select((state) => state.q));
  final currentPage =
      ref.watch(searchReposStateNotifierProvider.select((state) => state.currentPage));
  final perPage = ref.watch(searchReposStateNotifierProvider.select((state) => state.perPage));
  if (q.isEmpty) {
    throw const AppException(emptyQMessage);
  }
  if (currentPage < 1) {
    throw const AppException('ページ番号が正しくありません。');
  }
  if (perPage < 1) {
    throw const AppException('1 ページあたりの件数が正しくありません。');
  }
  final response = await ref.read(searchRepoRepositoryProvider).fetchRepositories(
        q: q,
        page: currentPage,
        perPage: perPage,
      );
  // 結果を更新してから List<Repo> を返す
  ref.read(searchReposStateNotifierProvider.notifier).updateByFetchResult(response.totalCount);
  return response.items;
});

/// GitHub リポジトリの検索条件などを操作する StateNotifier を提供するプロバイダ
final searchReposStateNotifierProvider =
    StateNotifierProvider.autoDispose<SearchReposStateNotifier, RepoSearchState>(
  (_) => SearchReposStateNotifier(),
);

class SearchReposStateNotifier extends StateNotifier<RepoSearchState> {
  SearchReposStateNotifier() : super(const RepoSearchState());

  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  /// 検索ワードを変更する
  void updateSearchWord(String q) {
    state = state.copyWith(q: q, currentPage: 1);
    animateToTop();
  }

  /// 前のページへ
  void showPreviousPage() {
    if (state.currentPage < 2) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage - 1);
    resetPagerStatus();
    animateToTop();
  }

  /// 次のページへ
  void showNextPage() {
    if (state.currentPage >= state.maxPage) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage + 1);
    resetPagerStatus();
    animateToTop();
  }

  /// GET /search/repository の結果に応じて更新すべき状態を更新する
  void updateByFetchResult(
    int totalCount,
  ) {
    state = state.copyWith(
      totalCount: totalCount,
      maxPage: (totalCount / state.perPage).ceil(),
    );
    resetPagerStatus();
  }

  /// ページャに関わる状態を更新する
  void resetPagerStatus() {
    state = state.copyWith(
      canShowPreviousPage: state.currentPage > 1,
      canShowNextPage: state.currentPage < state.maxPage,
    );
  }

  /// ページ切替時に ListView の上までスクロールする
  void animateToTop() {
    if (!scrollController.hasClients) {
      return;
    }
    scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 200),
      curve: Curves.linear,
    );
  }
}
