import 'package:flutter_github_search/pages/issue/issue_page.dart';
import 'package:flutter_github_search/providers/common/use_mock.dart';
import 'package:flutter_github_search/providers/issue/fetch_issue.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('IssuePage のテスト', (tester) async {
    await tester.pumpWidget(
      TestScaffoldWrapper(
        overrides: <Override>[
          // applicationDocumentsDirectoryProvider.overrideWithValue(
          //   // await getApplicationDocumentsDirectory(),
          //   Directory(''),
          // ),
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

    // The first frame is a loading state.
    expect(find.byType(SpinKitCircle), findsOneWidget);

    // Re-render. TodoListProvider should have finished fetching the todos by now
    await tester.pump();

    expect(find.byType(SpinKitCircle), findsOneWidget);

    await tester.pump();

    expect(find.byType(SpinKitCircle), findsOneWidget);

    // // はじめはカウンターの値は 0 である
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // カウンターを 1 回押してインクリメントする
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // 1 回押した後はカウンターの値は 1 になる
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
