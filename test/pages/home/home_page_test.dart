import 'package:flutter/material.dart';
import 'package:flutter_github_search/pages/first/first_page.dart';
import 'package:flutter_github_search/pages/home/home_page.dart';
import 'package:flutter_github_search/pages/second/second_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('HomePage のテスト', (tester) async {
    await tester.pumpWidget(
      const TestScaffoldWrapper(
        child: HomePage(),
      ),
    );

    // Go to FirstPage ボタンを押す
    await tester.tap(find.text('Go to ${FirstPage.name}'));

    // しばらく待つ
    await tester.pumpAndSettle();

    // FirstPage に遷移していることを確認する
    expect(find.byType(FirstPage), findsOneWidget);

    // 戻る
    await tester.pageBack();

    // しばらく待つ
    await tester.pumpAndSettle();

    // Go to SecondPage ボタンを押す
    await tester.tap(find.text('Go to ${SecondPage.name}'));

    // しばらく待つ
    await tester.pumpAndSettle();

    // SecondPage に遷移していることを確認する
    expect(find.byType(SecondPage), findsOneWidget);

    // 戻る
    await tester.pageBack();

    // しばらく待つ
    await tester.pumpAndSettle();

    // Show SnackBar ボタンを押す
    await tester.tap(find.byKey(const ValueKey('SnackBar')));

    // 待つ
    await tester.pump();

    // スナックバーが表示されていることを確認する
    expect(find.text('A SnackBar is shown.'), findsOneWidget);
  });
}
