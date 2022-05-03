import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/response_data/create_issue_response/create_issue_response.dart';
import '../models/response_data/fetch_issues_response/fetch_issues_response.dart';
import '../providers/common/github_access_token.dart';

final issueRepositoryProvider = Provider.autoDispose(
  (ref) => IssueRepository(
    client: ref.read(apiClientProvider),
    accessToken: ref.read(gitHubAccessTokenProvider),
  ),
);

class IssueRepository {
  IssueRepository({
    required ApiClient client,
    required String accessToken,
  })  : _client = client,
        _accessToken = accessToken;

  final ApiClient _client;
  final String _accessToken;

  /// GET /repos/{owner}/{repo}/issues API をコールして
  /// 指定した GitHub リポジトリの Issue 一覧を取得する。
  Future<FetchIssuesResponse> fetchIssues({
    required String ownerName,
    required String repoName,
    int page = 1,
    int perPage = 10,
  }) async {
    final baseResponseData = await _client.get(
      '/repos/$ownerName/$repoName/issues',
      queryParameters: <String, dynamic>{
        'page': page,
        'per_page': perPage,
      },
      options: Options(headers: <String, dynamic>{
        'Accept': 'application/vnd.github.v3+json',
      }),
    );
    return FetchIssuesResponse.fromBaseResponseData(baseResponseData);
  }

  /// POST /repos/{owner}/{repo}/issues API をコールして
  /// 指定した GitHub リポジトリに Issue を作成する。
  Future<CreateIssueResponse> createIssue({
    required String ownerName,
    required String repoName,
    required String title,
    required String body,
  }) async {
    final baseResponseData = await _client.post(
      '/repos/$ownerName/$repoName/issues',
      data: <String, dynamic>{
        'title': title,
        'body': body,
      },
      options: Options(headers: <String, dynamic>{
        'Accept': 'application/vnd.github.v3+json',
        'Authorization': 'token $_accessToken',
      }),
    );
    return CreateIssueResponse.fromBaseResponseData(baseResponseData);
  }
}
