import 'package:flutter/material.dart';
import 'package:flutter_github_search/constants/string.dart';
import 'package:flutter_github_search/pages/repo/repo_page.dart';
import 'package:flutter_github_search/providers/common/use_mock.dart';
import 'package:flutter_github_search/providers/repo/search_repo.dart';
import 'package:flutter_github_search/widgets/repo/repo_item.dart';
import 'package:flutter_github_search/widgets/repo/text_field.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('${RepoPage.name} のテスト', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(
        TestScaffoldWrapper(
          overrides: <Override>[
            useMockProvider.overrideWithValue(true),
          ],
          child: Stack(
            children: [
              const RepoPage(),
              Consumer(
                builder: (context, ref, _) {
                  return ElevatedButton(
                    onPressed: () => ref
                        .read(searchRepoStateNotifierProvider.notifier)
                        .updateSearchWord('flutter'),
                    child: const Text('Search by: flutter'),
                  );
                },
              ),
            ],
          ),
        ),
      );

      // RepoPageTextField と
      // 検索キーワードの入力を勧める旨が表示されているのを確認する
      expect(find.byType(RepoPageTextField), findsOneWidget);
      expect(find.text(emptyQMessage), findsOneWidget);

      // 検索キーワードを入力する。
      // 通常の方法では flutter test では Timer が動かないので、
      // その後に StateNotifierProvider から直接検索キーワードを更新する。
      await tester.enterText(find.byType(TextField), 'flutter');
      await tester.tap(find.text('Search by: flutter'));

      // 検索ワードが更新されて GET /search/repositories API をコールされるまでの
      // 一連の操作などをしばらく待つ
      await Future<void>.delayed(const Duration(seconds: 3));

      // ここで HTTP レスポンスに応じた Issue 一覧ウィジェットが描画されている想定
      await tester.pumpAndSettle();

      // RefreshIndicator や ListView の存在を確かめる
      expect(find.byType(ListView), findsOneWidget);

      // RepoItemWidget が所定の個数返っていることを確かめる
      expect(find.byType(RepoItemWidget), findsNWidgets(1));

      // GestureDetector の onTap を発火させるために
      // 適当に RepoPage の Scaffold.appBar をタップする
      await tester.tap(find.byKey(RepoPage.gestureDetectorKey));

      // TODO: フォーカスがテキストフィールドから外れていることを確認する...
    });
  });
}
