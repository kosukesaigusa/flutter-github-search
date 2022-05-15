import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/number.dart';
import '../../providers/repo/search_repo.dart';
import '../../utils/timer.dart';

class RepoPageTextField extends StatefulHookConsumerWidget {
  const RepoPageTextField({super.key});

  @override
  ConsumerState<RepoPageTextField> createState() => _RepoPageTextFieldState();
}

class _RepoPageTextFieldState extends ConsumerState<RepoPageTextField> {
  late TextEditingController _textEditingController;
  final debounce = Debounce(duration: minSearchApiCallPeriodDuration);

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      onChanged: (q) => debounce.run(() => _updateSearchWordCallback(q)),
      maxLines: 1,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      ),
    );
  }

  /// 検索キーワードを更新する。Debounce の callback に指定する
  void _updateSearchWordCallback(String q) =>
      ref.read(searchRepoStateNotifierProvider.notifier).updateSearchWord(q);
}
