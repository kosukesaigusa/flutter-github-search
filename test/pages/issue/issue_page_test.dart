import 'package:flutter/material.dart';
import 'package:flutter_github_search/pages/issue/issue_page.dart';
import 'package:flutter_github_search/providers/common/use_mock.dart';
import 'package:flutter_github_search/providers/issue/fetch_issue.dart';
import 'package:flutter_github_search/widgets/issue/issue_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('IssuePage のテスト', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(
        TestScaffoldWrapper(
          overrides: <Override>[
            issueOwnerNameProvider.overrideWithProvider(
              StateProvider.autoDispose<String>((_) => 'KosukeSaigusa'),
            ),
            issueRepoNameProvider.overrideWithProvider(
              StateProvider.autoDispose<String>((_) => 'flutter-github-search'),
            ),
            // Mock を使用する
            useMockProvider.overrideWithValue(true)
          ],
          child: const IssuePage(),
        ),
      );

      // SpinkitCircle が表示されているのを確認する
      expect(find.byType(SpinKitCircle), findsOneWidget);

      // モックの HTTP レスポンスが返ってくるまでしばらく待つ
      await Future<void>.delayed(const Duration(seconds: 2));

      // ここで HTTP レスポンスに応じた Issue 一覧ウィジェットが描画されている想定
      await tester.pumpAndSettle();

      // RefreshIndicator や ListView の存在を確かめる
      expect(find.byType(RefreshIndicator), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);

      // IssueItemWidget が所定の個数返っていることを確かめる
      expect(find.byType(IssueItemWidget), findsNWidgets(2));
    });
  });
}
