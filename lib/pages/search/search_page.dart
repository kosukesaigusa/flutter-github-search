import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/number.dart';
import '../../providers/github_repository/github_repository.dart';
import '../../providers/scaffold_messenger/scaffold_messenger.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Search'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _textEditingController,
            onChanged: _textFieldOnChanged,
          ),
          Expanded(
            child: ref.watch(gitHubRepositoriesFutureProvider).when<Widget>(
                  loading: () => const PrimarySpinkitCircle(),
                  error: (e, __) => Text(e.toString()),
                  data: (gitHubRepositories) {
                    if (gitHubRepositories.isEmpty) {
                      return const Text('検索語句を入力してください');
                    }
                    return ListView.builder(
                      itemCount: gitHubRepositories.length,
                      itemBuilder: (context, index) {
                        final gitHubRepository = gitHubRepositories[index];
                        return ListTile(
                          leading: const FaIcon(FontAwesomeIcons.github),
                          title: Text(gitHubRepository.name),
                          subtitle: Text(
                            gitHubRepository.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                            ),
                          ),
                          trailing: Text(gitHubRepository.starGazersCount.toString()),
                          onTap: () async {
                            final urlString = gitHubRepository.htmlUrl;
                            if (await canLaunch(urlString)) {
                              await launch(urlString);
                            } else {
                              ref
                                  .read(scaffoldMessengerController)
                                  .showSnackBar('URL が開けませんでした：$urlString');
                            }
                          },
                        );
                      },
                    );
                  },
                ),
          ),
        ],
      ),
    );
  }

  /// テキストフィールドの onChanged に指定する関数。
  /// ディバウンスタイマーがアクティブであれば一度キャンセルして、直後に新しく定義し直す。
  /// 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火して、検索ワードを更新し
  /// GitHub の Search Repository API を新しいキーワードで取得し直す。
  /// UX に支障が出ない程度に、無駄に API をコールする回数を減らす目的。
  void _textFieldOnChanged(String text) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
    }
    // 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火する
    _debounceTimer = Timer(minSearchApiCallPeriodDuration, () {
      ref.read(gitHubRepositoriesSearchWordProvider.notifier).update((state) => text);
    });
  }
}
