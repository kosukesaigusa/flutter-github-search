import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/github_repo/github_repo.dart';

/// GitHub リポジトリ一覧の前のページ・次のページボタン
class PagerWidget extends StatefulHookConsumerWidget {
  const PagerWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<PagerWidget> createState() => _PagerWidgetState();
}

class _PagerWidgetState extends ConsumerState<PagerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: _isPreviousPageButtonEnabled
              ? () {
                  ref.read(currentPageStateProvider.notifier).update((state) => state - 1);
                  _animateToTop();
                }
              : null,
          child: const Text('前のページ'),
        ),
        TextButton(
          onPressed: _isNextPageButtonEnabled
              ? () {
                  ref.read(currentPageStateProvider.notifier).update((state) => state + 1);
                  _animateToTop();
                }
              : null,
          child: const Text('次のページ'),
        ),
      ],
    );
  }

  bool get _isPreviousPageButtonEnabled =>
      ref.watch(currentPageStateProvider) > 1 && ref.watch(maxPageStateProvider) > 1;

  bool get _isNextPageButtonEnabled =>
      ref.watch(currentPageStateProvider) < ref.watch(maxPageStateProvider);

  /// ページ切替時に ListView の上までスクロールする
  void _animateToTop() {
    ref.read(searchPageScrollControllerProvider).animateTo(
          0,
          duration: const Duration(microseconds: 200),
          curve: Curves.linear,
        );
  }
}
