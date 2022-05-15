import 'package:flutter_github_search/utils/dio_interceptors/mock_interceptor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('正規表現による MockInterceptor の API URL パスマッチングのテスト', () {
    final regExp = MockInterceptor.listRepoIssuesRegExp;
    const path = '/repos/ownerName/repository-name/issues';
    final matched = regExp.hasMatch(path);
    expect(matched, true);
  });
}
