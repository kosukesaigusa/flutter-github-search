import 'package:flutter/material.dart';
import 'package:flutter_github_search/pages/not_found/not_found_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('NotFoundPage のテスト', (tester) async {
    await tester.pumpWidget(
      TestScaffoldWrapper(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () async {
              await Navigator.pushNamed<void>(context, '/not-exist-path/');
            },
            child: const Text('Test'),
          ),
        ),
      ),
    );

    // ボタンを押して画面遷移する
    await tester.tap(find.byType(ElevatedButton));

    // しばらく待つ
    await tester.pumpAndSettle();

    // NotFoundPage に遷移していることを確認する
    expect(find.byType(NotFoundPage), findsOneWidget);
  });
}
