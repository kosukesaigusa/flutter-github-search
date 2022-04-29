import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../providers/repo/repo.dart';
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
            if (ref.watch(repoSearchStateNotifierProvider).totalCount > 0)
              _text('検索結果: ${ref.watch(repoSearchStateNotifierProvider).totalCount.withComma} 件'
                  '（${ref.watch(repoSearchStateNotifierProvider).currentPage.withComma} / '
                  '${ref.watch(repoSearchStateNotifierProvider).maxPage.withComma} '
                  'ページ）'),
            Expanded(
              child: ref.watch(reposFutureProvider).when<Widget>(
                    loading: () => const PrimarySpinkitCircle(),
                    error: (e, __) => _text(e.toString()),
                    data: (repos) {
                      if (repos.isEmpty) {
                        return _text(emptyQMessage);
                      }
                      return ListView.builder(
                        // +1 は下部の Pager
                        controller:
                            ref.watch(repoSearchStateNotifierProvider.notifier).scrollController,
                        itemCount: repos.length + 1,
                        itemBuilder: (context, index) {
                          if (index == repos.length) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: PagerWidget(),
                            );
                          } else {
                            return RepoItemWidget(repo: repos[index]);
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

  /// SearchPage 内の Column.children に並べるテキスト
  Widget _text(String s) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          s,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      );
}
