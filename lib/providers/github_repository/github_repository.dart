import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/github_repository/github_repository.dart';
import '../../repositories/search_github_repository.dart';

/// GitHub のリポジトリの検索ワードのプロバイダ
final gitHubRepositoriesSearchWordProvider = StateProvider.autoDispose<String>((ref) => '');

/// 指定した検索ワードで GitHub の ... API をコールして、...
final gitHubRepositoriesFutureProvider =
    FutureProvider.autoDispose<List<GitHubRepository>>((ref) async {
  final q = ref.watch(gitHubRepositoriesSearchWordProvider);
  if (q.isEmpty) {
    return <GitHubRepository>[];
  }
  final githubRepositories =
      await ref.read(searchGitHubRepositoryRepositoryProvider).fetchGitHubRepositories(q: q);
  return githubRepositories;
});
