import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/api_response/create_issue_response/create_issue_response.dart';

final issueRepositoryProvider = Provider.autoDispose(
  (ref) => IssueRepository(client: ref.read(apiClientProvider)),
);

class IssueRepository {
  IssueRepository({
    required ApiClient client,
  }) : _client = client;
  final ApiClient _client;

  /// POST /repos/{owner}/{repo}/issues API をコールして
  /// 指定した GitHub リポジトリに Issue を作成する。
  Future<CreateIssueResponse> createIssue({
    required String owner,
    required String repo,
    required String title,
    required String body,
  }) async {
    final apiResponse = await _client.post(
      '/repos/$owner/$repo/issues',
      queryParameters: <String, dynamic>{
        'title': title,
        'body': body,
      },
    );
    return CreateIssueResponse.fromJson(apiResponse.data);
  }
}
