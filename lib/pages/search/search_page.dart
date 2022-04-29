import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/number.dart';
import '../../constants/string.dart';
import '../../providers/github_repo/github_repo.dart';
import '../../utils/extensions/int.dart';
import '../../widgets/loading.dart';
import '../../widgets/search/pager.dart';
import '../../widgets/search/repo_item.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const path = '/search/';
  static const name = 'SearchPage';

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  late TextEditingController _textEditingController;
  Timer? _debounceTimer;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showLoadingSuffixIcon = useState(false);
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _textEditingController,
                // テキストフィールドの onChanged に指定する関数。
                // ディバウンスタイマーがアクティブであれば一度キャンセルして、直後に新しく定義し直す。
                // 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火して、検索ワードを更新し
                // GitHub の Search Repository API を新しいキーワードで取得し直す。
                // UX に支障が出ない程度に、無駄に API をコールする回数を減らす目的。
                onChanged: (text) {
                  if (_debounceTimer?.isActive ?? false) {
                    _debounceTimer!.cancel();
                  }
                  // 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火する
                  _debounceTimer = Timer(minSearchApiCallPeriodDuration, () {
                    showLoadingSuffixIcon.value = true;
                    ref.read(searchWordStateProvider.notifier).update((state) => text);
                  });
                },
                maxLines: 1,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  suffix: showLoadingSuffixIcon.value
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
            Expanded(
              child: ref.watch(gitHubReposFutureProvider).when<Widget>(
                    loading: () => const PrimarySpinkitCircle(),
                    error: (e, __) => _text(e.toString()),
                    data: (searchRepositoryResponse) {
                      showLoadingSuffixIcon.value = false;
                      final items = searchRepositoryResponse.items;
                      final totalCount = searchRepositoryResponse.totalCount;
                      _updateMaxPage(totalCount);
                      if (items.isEmpty) {
                        return _text(emptyQMessage);
                      }
                      return ListView.builder(
                        // +2 は上下の Gap と上部のヒット件数の表示
                        controller: ref.watch(searchPageScrollControllerProvider),
                        itemCount: items.length + 2,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(8),
                                _text('検索結果: ${totalCount.withComma} 件'
                                    '（${ref.watch(currentPageStateProvider).withComma} / '
                                    '${(totalCount / ref.watch(perPageStateProvider)).ceil().withComma} '
                                    'ページ）'),
                              ],
                            );
                          } else if (index == items.length + 1) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: PagerWidget(),
                            );
                          } else {
                            return RepoItemWidget(repo: items[index - 1]);
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

  /// 最大ページ数を更新する
  void _updateMaxPage(int totalCount) {
    ref
        .read(maxPageStateProvider.notifier)
        .update((state) => (totalCount / ref.watch(perPageStateProvider)).ceil());
  }

  /// SearchPage 内の Column.children に並べるテキスト
  Widget _text(String message) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      );
}
