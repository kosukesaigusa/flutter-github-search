import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/number.dart';
import '../../providers/github_repository/github_repository.dart';
import '../../services/scaffold_messenger.dart';
import '../../utils/string.dart';
import '../../widgets/loading.dart';

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
                    ref.read(gitHubRepositoriesSearchWordProvider.notifier).update((state) => text);
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
              child: ref.watch(gitHubRepositoriesFutureProvider).when<Widget>(
                    loading: () => const PrimarySpinkitCircle(),
                    error: (e, __) => Text(e.toString()),
                    data: (gitHubRepositories) {
                      showLoadingSuffixIcon.value = false;
                      if (gitHubRepositories.isEmpty) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Text(
                            'GitHub の Search Repository API で検索したい'
                            'キーワードを入力してください。',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: gitHubRepositories.length + 2,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const Gap(8);
                          }
                          if (index == gitHubRepositories.length + 1) {
                            return const Gap(8);
                          }
                          final gitHubRepository = gitHubRepositories[index - 1];
                          return InkWell(
                            onTap: () async {
                              final urlString = gitHubRepository.htmlUrl;
                              if (await canLaunch(urlString)) {
                                await launch(urlString);
                              } else {
                                ref
                                    .read(scaffoldMessengerServiceProvider)
                                    .showSnackBar('URL が開けませんでした：$urlString');
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const FaIcon(FontAwesomeIcons.github),
                                  const Gap(8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gitHubRepository.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          gitHubRepository.description,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Text(
                                          '更新日：${gitHubRepository.updatedAt.toString().substring(0, 10)}',
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(8),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.star, size: 12),
                                          const Gap(4),
                                          Text(
                                            addComma(gitHubRepository.starGazersCount),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(4),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const FaIcon(FontAwesomeIcons.codeFork, size: 12),
                                          const Gap(4),
                                          Text(
                                            addComma(gitHubRepository.forksCount),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
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
