import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../models/api_response/search_repository_response/search_repository_response.dart';
import '../../repositories/search_github_repository.dart';
import '../../utils/exception.dart';

/// GitHub リポジトリ一覧の ListView のスクロールコントローラを提供するプロバイダ
final searchPageScrollControllerProvider = Provider.autoDispose((_) => ScrollController());

/// GitHub のリポジトリの検索ワードを提供するプロバイダ
final searchWordStateProvider = StateProvider.autoDispose<String>((ref) => '');

/// GitHub のリポジトリの検索結果の現在取得・表示する番号を提供するプロバイダ
final currentPageStateProvider = StateProvider.autoDispose<int>((ref) => 1);

/// GitHub のリポジトリの検索結果のページ番号の最大値を提供するプロバイダ
final maxPageStateProvider = StateProvider.autoDispose<int>((ref) => 1);

/// GitHub のリポジトリの検索結果の 1 ページあたりの件数を提供するプロバイダ
final perPageStateProvider = StateProvider.autoDispose<int>((ref) => 10);

/// GitHub の GET /search/repositories API をコールして、
/// 検索にヒットした GitHub リポジトリの一覧を返す。
final gitHubReposFutureProvider = FutureProvider.autoDispose<SearchRepositoryResponse>((ref) async {
  final q = ref.watch(searchWordStateProvider);
  final page = ref.watch(currentPageStateProvider);
  final perPage = ref.watch(perPageStateProvider);
  if (q.isEmpty) {
    throw const AppException(emptyQMessage);
  }
  if (page < 1) {
    throw const AppException('ページ番号が正しくありません。');
  }
  if (perPage < 1) {
    throw const AppException('1 ページあたりの件数が正しくありません。');
  }
  return ref.read(searchGitHubRepoRepositoryProvider).fetchGitHubRepositories(
        q: q,
        page: page,
        perPage: perPage,
      );
});
