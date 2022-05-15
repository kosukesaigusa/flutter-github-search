import 'package:flutter/material.dart';
import 'package:flutter_github_search/pages/first/first_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../widgets/test_scaffold_wrapper.dart';

void main() {
  testWidgets('${FirstPage.name} のテスト', (tester) async {
    await tester.pumpWidget(const TestScaffoldWrapper(child: FirstPage()));

    // はじめはカウンターの値は 0 である
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // カウンターを 1 回押してインクリメントする
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // 1 回押した後はカウンターの値は 1 になる
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
