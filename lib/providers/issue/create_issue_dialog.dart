import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/snack_bar.dart';
import '../../repositories/issue.dart';
import '../../utils/exception.dart';
import 'create_issue_dialog_state.dart';
import 'fetch_issue.dart';

/// Issue を作成するモーダル画面内の状態を保持・操作する
/// StateNotifier を提供するプロバイダ。
final createIssueDialogStateNotifierProvider =
    StateNotifierProvider.autoDispose<CreateIssueDialogStateNotifier, CreateIssueDialogState>(
  (ref) => CreateIssueDialogStateNotifier(ref.read),
);

class CreateIssueDialogStateNotifier extends StateNotifier<CreateIssueDialogState> {
  CreateIssueDialogStateNotifier(this._read) : super(const CreateIssueDialogState());

  final Reader _read;
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final titleTextEditingController = TextEditingController();
  final bodyTextEditingController = TextEditingController();

  /// Issue を作成する
  Future<void> createIssueDialog() async {
    if (!_validateBeforeSubmitting()) {
      return;
    }
    if (state.sending) {
      return;
    }
    try {
      state = state.copyWith(sending: true);
      await _read(issueRepositoryProvider).createIssue(
        ownerName: _read(issueOwnerNameProvider),
        repoName: _read(issueRepoNameProvider),
        title: titleTextEditingController.value.text,
        body: bodyTextEditingController.value.text,
      );
    } on AppException {
      rethrow;
    } on ApiException {
      rethrow;
    } on Exception {
      rethrow;
    } finally {
      state = state.copyWith(sending: false);
    }
  }

  /// 「作成する」ボタンを押す前に入力内容を確認する。
  /// 不正な場合はスナックバーをアラートダイアログ上に表示する。
  bool _validateBeforeSubmitting() {
    if (titleTextEditingController.value.text.isEmpty) {
      showSnackBarOnDialog('タイトルを入力してください。');
      return false;
    }
    if (bodyTextEditingController.value.text.isEmpty) {
      showSnackBarOnDialog('内容を入力してください。');
      return false;
    }
    return true;
  }

  /// ダイアログ上でスナックバーを表示する
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarOnDialog(
    String message, {
    bool removeCurrentSnackBar = true,
    Duration duration = defaultSnackBarDuration,
  }) {
    final scaffoldMessengerState = scaffoldMessengerKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    return scaffoldMessengerState.showSnackBar(SnackBar(
      content: Text(message),
      behavior: defaultSnackBarBehavior,
      duration: duration,
    ));
  }

  @override
  void dispose() {
    // TODO: SharedPreferences に下書きを保存する
    titleTextEditingController.dispose();
    bodyTextEditingController.dispose();
    super.dispose();
  }
}
