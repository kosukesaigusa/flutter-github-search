import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../providers/repo/search_repo.dart';
import '../../widgets/common_text.dart';
import '../../widgets/fetch_summary.dart';
import '../../widgets/loading.dart';
import '../../widgets/pager.dart';
import '../../widgets/repo/repo_item.dart';
import '../../widgets/repo/text_field.dart';

class RepoPage extends HookConsumerWidget {
  const RepoPage({super.key});

  static const path = '/search-repo/';
  static const name = 'RepoPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Repos'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Gap(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RepoPageTextField(),
            ),
            SearchRepoContentWidget(),
          ],
        ),
      ),
    );
  }
}

/// SearchRepo の TextField 以下のウィジェット
class SearchRepoContentWidget extends HookConsumerWidget {
  const SearchRepoContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchRepoStateNotifierProvider);
    final notifier = ref.watch(searchRepoStateNotifierProvider.notifier);
    return Expanded(
      child: state.loading
          ? const PrimarySpinkitCircle()
          : state.repos.isEmpty
              ? const CommonTextWidget(emptyQMessage)
              : ListView.builder(
                  // +2 は上部の Summary と下部の Pager
                  controller: ref.watch(searchRepoStateNotifierProvider.notifier).scrollController,
                  itemCount: state.repos.length + 2,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return FetchSummaryWidget(
                        totalCount: state.totalCount,
                        currentPage: state.currentPage,
                        maxPage: state.maxPage,
                      );
                    }
                    if (index == state.repos.length + 1) {
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
                      return RepoItemWidget(repo: state.repos[index - 1]);
                    }
                  },
                ),
    );
  }
}
