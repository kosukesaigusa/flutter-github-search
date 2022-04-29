import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/number.dart';
import '../../providers/search_repo/search_repo.dart';

class SearchPageTextField extends StatefulHookConsumerWidget {
  const SearchPageTextField({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchPageTextField> createState() => _SearchPageTextFieldState();
}

class _SearchPageTextFieldState extends ConsumerState<SearchPageTextField> {
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
    return TextField(
      controller: _textEditingController,
      // テキストフィールドの onChanged に指定する関数。
      // ディバウンスタイマーがアクティブであれば一度キャンセルして、直後に新しく定義し直す。
      // 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火して、検索ワードを更新し
      // GitHub の Search Repository API を新しいキーワードで取得し直す。
      // UX に支障が出ない程度に、無駄に API をコールする回数を減らす目的。
      onChanged: (q) {
        if (_debounceTimer?.isActive ?? false) {
          _debounceTimer!.cancel();
        }
        // 所定の時間（ミリ秒）経過後に第 2 引数のコールバック関数が発火する
        _debounceTimer = Timer(minSearchApiCallPeriodDuration, () {
          ref.read(searchRepoStateNotifierProvider.notifier).updateSearchWord(q);
        });
      },
      maxLines: 1,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      ),
    );
  }
}
