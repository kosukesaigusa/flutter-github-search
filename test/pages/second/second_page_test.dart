import 'package:flutter/material.dart';
import 'package:flutter_github_search/pages/second/second_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('SecondPage のテスト', (tester) async {
    await tester.pumpWidget(
      const TestScaffoldWrapper(
        child: SecondPage(),
      ),
    );

    // ボタンを押して SnackBar を表示する
    await tester.tap(find.byType(ElevatedButton));

    // 待つ
    await tester.pump();

    // スナックバーが表示されていることを確認する
    expect(find.text('A SnackBar is shown.'), findsOneWidget);
  });
}
