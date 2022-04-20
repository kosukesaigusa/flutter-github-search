import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/snack_bar.dart';

final scaffoldMessengerController = Provider.autoDispose((ref) => ScaffoldMessengerController());

/// ScaffoldMessenger 上でスナックバーやダイアログを表示するためのコントローラ
class ScaffoldMessengerController {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final navigatorKey = GlobalKey<NavigatorState>();

  /// アラートダイアログを表示する
  Future<void> showAlertDialog<T>({required AlertDialog alertDialog}) {
    return showDialog<T>(
      context: scaffoldMessengerKey.currentContext!,
      builder: (context) {
        return alertDialog;
      },
    );
  }

  /// スナックバーを表示する
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    dynamic message, {
    bool removeCurrentSnackBar = true,
    Duration duration = defaultSnackBarDuration,
  }) {
    final scaffoldMessengerState = scaffoldMessengerKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    // message が String 型ならそのまま、その他なら String 型に変換しつつ
    // ユーザーに見せるべきでない文言は調整して SnackBar を表示する。
    if (message is String) {
      return scaffoldMessengerState.showSnackBar(SnackBar(
        content: Text(message),
        behavior: defaultSnackBarBehavior,
        duration: duration,
      ));
    } else {
      return scaffoldMessengerState.showSnackBar(SnackBar(
        content: Text('$message'.replaceAll('Exception:', '')),
        behavior: defaultSnackBarBehavior,
        duration: duration,
      ));
    }
  }

  /// その他の Exception 起点でスナックバーを表示する
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarByException(Exception e) {
    return showSnackBar('[${e.toString()}]: エラーが発生しました。');
  }

  /// フォーカスを外す
  void unFocus() {
    FocusScope.of(scaffoldMessengerKey.currentContext!).unfocus();
  }
}
