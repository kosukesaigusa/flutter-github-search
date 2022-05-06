import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/response_data/issue_response/issue_response.dart';
import '../models/response_data/issues_response/issues_response.dart';
import '../providers/common/github_access_token.dart';
import '../utils/exception.dart';

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
  Future<IssuesResponse> fetchIssues({
    required String ownerName,
    required String repoName,
    int page = 1,
    int perPage = 10,
  }) async {
    final responseResult = await _client.get(
      '/repos/$ownerName/$repoName/issues',
      queryParameters: <String, dynamic>{
        'page': page,
        'per_page': perPage,
      },
      options: Options(headers: <String, dynamic>{
        'Accept': 'application/vnd.github.v3+json',
      }),
    );
    return responseResult.when(
      success: IssuesResponse.fromBaseResponseData,
      failure: (message) => throw AppException(message),
    );
  }

  /// POST /repos/{owner}/{repo}/issues API をコールして
  /// 指定した GitHub リポジトリに Issue を作成する。
  Future<IssueResponse> createIssue({
    required String ownerName,
    required String repoName,
    required String title,
    required String body,
  }) async {
    final responseResult = await _client.post(
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
    return responseResult.when(
      success: IssueResponse.fromBaseResponseData,
      failure: (message) => throw AppException(message),
    );
  }
}
