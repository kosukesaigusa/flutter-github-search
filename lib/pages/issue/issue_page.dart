import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/issue/fetch_issue.dart';
import '../../services/scaffold_messenger.dart';
import '../../widgets/issue/create_issue_dialog.dart';
import '../../widgets/issue/issue_item.dart';
import '../../widgets/loading.dart';
import '../../widgets/pager.dart';

class IssuePage extends StatefulHookConsumerWidget {
  const IssuePage({super.key});

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
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Issue が取得できませんでした。'),
                      TextButton(
                        onPressed: notifier.reload,
                        child: const Text('リロードする'),
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: notifier.reload,
                  child: ListView.builder(
                    // +1 は下部の Pager
                    controller:
                        ref.watch(fetchIssueStateNotifierProvider.notifier).scrollController,
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
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showDialog<bool>(
            context: context,
            builder: (context) => const CreateIssueDialogDialog(),
          );
          if (result ?? false) {
            await ref.read(fetchIssueStateNotifierProvider.notifier).reload();
            ref.read(scaffoldMessengerServiceProvider).showSnackBar(
                  'Issue を作成しました。新しく作成した Issue が表示されない場合は、'
                  '数秒程度待って、画面を下にスワイプしてリロードしてください。',
                );
          }
        },
        child: const FaIcon(FontAwesomeIcons.penToSquare),
      ),
    );
  }
}
