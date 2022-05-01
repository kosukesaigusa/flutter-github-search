import 'package:flutter/material.dart';

/// リポジトリ一覧・イシュー一覧の下部の前のページ・次のページボタン
class PagerWidget extends StatelessWidget {
  const PagerWidget({
    Key? key,
    required this.canShowPreviousPage,
    required this.canShowNextPage,
    required this.showPreviousPage,
    required this.showNextPage,
  }) : super(key: key);

  final bool canShowPreviousPage;
  final bool canShowNextPage;
  final void Function() showPreviousPage;
  final void Function() showNextPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: canShowPreviousPage ? showPreviousPage : null,
          child: const Text('前のページ'),
        ),
        TextButton(
          onPressed: canShowNextPage ? showNextPage : null,
          child: const Text('次のページ'),
        ),
      ],
    );
  }
}
