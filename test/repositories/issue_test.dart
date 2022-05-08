import 'package:flutter_test/flutter_test.dart';

import '../env/env.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('Environmental variables test', () async {
    final envVars = await fetchEnvVars;
    final targetRepo = envVars['TARGET_GITHUB_REPO'] as String;
    final ownerName = envVars['GITHUB_OWNER_NAME'] as String;
    expect(targetRepo, 'flutter-github-search');
    expect(ownerName, 'KosukeSaigusa');
  });
}
