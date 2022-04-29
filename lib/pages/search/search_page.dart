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

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const path = '/search/';
  static const name = 'SearchPage';

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
          children: [
            const Gap(16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchPageTextField(),
            ),
            Expanded(
              child: ref.watch(reposFutureProvider).when<Widget>(
                    loading: () => const PrimarySpinkitCircle(),
                    error: (e, __) => SearchPageTextWidget(e.toString()),
                    data: (repos) {
                      if (repos.isEmpty) {
                        return const SearchPageTextWidget(emptyQMessage);
                      }
                      return ListView.builder(
                        // +2 は上部の Summary と下部の Pager
                        controller:
                            ref.watch(searchRepoStateNotifierProvider.notifier).scrollController,
                        itemCount: repos.length + 2,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const SearchResultSummaryWidget();
                          }
                          if (index == repos.length + 1) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: PagerWidget(),
                            );
                          } else {
                            return RepoItemWidget(repo: repos[index - 1]);
                          }
                        },
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

/// SearchPage 上部の検索結果の件数などを表示するウィジェット
class SearchResultSummaryWidget extends HookConsumerWidget {
  const SearchResultSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchPageTextWidget(
      '検索結果: ${ref.watch(searchRepoStateNotifierProvider).totalCount.withComma} 件'
      '（${ref.watch(searchRepoStateNotifierProvider).currentPage.withComma} / '
      '${ref.watch(searchRepoStateNotifierProvider).maxPage.withComma} '
      'ページ）',
    );
  }
}

/// SearchPage 内の Column.children に並べるテキスト
class SearchPageTextWidget extends StatelessWidget {
  const SearchPageTextWidget(
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
