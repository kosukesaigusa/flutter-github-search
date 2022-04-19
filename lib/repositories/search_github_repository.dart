import 'package:flutter_github_search/models/api_response/search_repository_response/search_repository_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/github_repository/github_repository.dart';
import '../providers/api_client/api_client.dart';

final searchGitHubRepositoryRepositoryProvider = Provider.autoDispose(
  (ref) => GitHubRepositoryRepository(client: ref.read(apiClientProvider)),
);

class GitHubRepositoryRepository {
  GitHubRepositoryRepository({required ApiClient client}) : _client = client;
  final ApiClient _client;

  /// 入力したキーワードで GET /search/repositories API をコールして
  /// ヒットする GitHub リポジトリ一覧を取得する。
  Future<List<GitHubRepository>> fetchGitHubRepositories({
    required String q,
  }) async {
    final apiResponse = await _client.get(
      '/search/repositories',
      queryParameters: <String, dynamic>{
        'q': q,
      },
    );
    return SearchRepositoryResponse.fromJson(apiResponse.data).items;
  }
}
