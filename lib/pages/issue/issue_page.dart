import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/issue/fetch_issue.dart';
import '../../widgets/issue/issue_item.dart';
import '../../widgets/loading.dart';
import '../../widgets/pager.dart';

class IssuePage extends StatefulHookConsumerWidget {
  const IssuePage({Key? key}) : super(key: key);

  static const path = '/issue/';
  static const name = 'IssuePage';

  @override
  ConsumerState<IssuePage> createState() => _IssuePageState();
}

class _IssuePageState extends ConsumerState<IssuePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(fetchIssueStateNotifierProvider);
    final notifier = ref.watch(fetchIssueStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Issues')),
      body: state.loading
          ? const PrimarySpinkitCircle()
          : state.issues.isEmpty
              ? const Center(child: Text('Issue がありません。'))
              : ListView.builder(
                  // +1 は下部の Pager
                  controller: ref.watch(fetchIssueStateNotifierProvider.notifier).scrollController,
                  itemCount: state.issues.length + 1,
                  itemBuilder: (context, index) {
                    if (index == state.issues.length) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: PagerWidget(
                          canShowPreviousPage: state.canShowPreviousPage,
                          canShowNextPage: state.canShowNextPage,
                          showPreviousPage: notifier.showPreviousPage,
                          showNextPage: notifier.showNextPage,
                        ),
                      );
                    } else {
                      return IssueItemWidget(issue: state.issues[index]);
                    }
                  },
                ),
    );
  }
}
