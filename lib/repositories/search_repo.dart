import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/response_data/search_repo_response/search_repo_response.dart';
import '../utils/exceptions/common.dart';

final searchRepoRepositoryProvider = Provider.autoDispose(
  (ref) => RepoRepository(client: ref.read(apiClientProvider)),
);

class RepoRepository {
  RepoRepository({
    required ApiClient client,
  }) : _client = client;
  final ApiClient _client;

  /// 入力したキーワードで GET /search/repositories API をコールして、
  /// ヒットする GitHub リポジトリ一覧を含む SearchRepoResponse を返す。
  Future<SearchRepoResponse> fetchRepositories({
    required String q,
    int page = 1,
    int perPage = 10,
  }) async {
    final responseResult = await _client.get(
      '/search/repositories',
      queryParameters: <String, dynamic>{
        'q': q,
        'page': page,
        'per_page': perPage,
      },
      options: Options(headers: <String, dynamic>{
        'Accept': 'application/vnd.github.v3+json',
      }),
    );
    return responseResult.when<SearchRepoResponse>(
      success: SearchRepoResponse.fromBaseResponseData,
      failure: (message) => throw AppException(message: message),
    );
  }
}
