import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../models/api_response/search_repository_response/search_repository_response.dart';
import '../../repositories/search_github_repository.dart';
import '../../utils/exception.dart';

/// GitHub のリポジトリの検索ワードを提供するプロバイダ
final gitHubReposSearchWordProvider = StateProvider.autoDispose<String>((ref) => '');

/// GitHub のリポジトリの検索結果のページ番号を提供するプロバイダ
final gitHubReposPageProvider = StateProvider.autoDispose<int>((ref) => 1);

/// GitHub のリポジトリの検索結果の 1 ページあたりの件数を提供するプロバイダ
final gitHubReposPerPageProvider = StateProvider.autoDispose<int>((ref) => 10);

/// GitHub の GET /search/repositories API をコールして、
/// 検索にヒットしたGitHub リポジトリの一覧を返す。
final gitHubReposFutureProvider = FutureProvider.autoDispose<SearchRepositoryResponse>((ref) async {
  final q = ref.watch(gitHubReposSearchWordProvider);
  final page = ref.watch(gitHubReposPageProvider);
  final perPage = ref.watch(gitHubReposPerPageProvider);
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
