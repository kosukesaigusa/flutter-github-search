import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/repo/repo.dart';

/// GitHub リポジトリ一覧の前のページ・次のページボタン
class PagerWidget extends StatefulHookConsumerWidget {
  const PagerWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<PagerWidget> createState() => _PagerWidgetState();
}

class _PagerWidgetState extends ConsumerState<PagerWidget> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(repoSearchStateNotifierProvider);
    final notifier = ref.watch(repoSearchStateNotifierProvider.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: state.canShowPreviousPage ? notifier.showPreviousPage : null,
          child: const Text('前のページ'),
        ),
        TextButton(
          onPressed: state.canShowNextPage ? notifier.showNextPage : null,
          child: const Text('次のページ'),
        ),
      ],
    );
  }
}
