import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../providers/search_repo/search_repo.dart';
import '../../utils/extensions/int.dart';
import '../../widgets/loading.dart';
import '../../widgets/search_page/pager.dart';
import '../../widgets/search_page/repo_item.dart';
import '../../widgets/search_page/text_field.dart';

class SearchRepoPage extends HookConsumerWidget {
  const SearchRepoPage({Key? key}) : super(key: key);

  static const path = '/search-repo/';
  static const name = 'SearchRepoPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Search'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Gap(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchRepoPageTextField(),
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
  const SearchRepoContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchRepoStateNotifierProvider);
    return Expanded(
      child: state.loading
          ? const PrimarySpinkitCircle()
          : state.repos.isEmpty
              ? const SearchRepoPageTextWidget(emptyQMessage)
              : ListView.builder(
                  // +2 は上部の Summary と下部の Pager
                  controller: ref.watch(searchRepoStateNotifierProvider.notifier).scrollController,
                  itemCount: state.repos.length + 2,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const SearchResultSummaryWidget();
                    }
                    if (index == state.repos.length + 1) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: PagerWidget(),
                      );
                    } else {
                      return RepoItemWidget(repo: state.repos[index - 1]);
                    }
                  },
                ),
    );
  }
}

/// SearchRepoPage 上部の検索結果の件数などを表示するウィジェット
class SearchResultSummaryWidget extends HookConsumerWidget {
  const SearchResultSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchRepoStateNotifierProvider);
    return SearchRepoPageTextWidget(
      '検索結果: ${state.totalCount.withComma} 件'
      '（${state.currentPage.withComma} / '
      '${state.maxPage.withComma} '
      'ページ）',
    );
  }
}

/// SearchRepoPage 内の Column.children に並べるテキスト
class SearchRepoPageTextWidget extends StatelessWidget {
  const SearchRepoPageTextWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
    );
  }
}
