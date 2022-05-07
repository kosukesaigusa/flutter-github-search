import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/snack_bar.dart';
import '../constants/string.dart';
import '../utils/extensions/string.dart';

final scaffoldMessengerServiceProvider = Provider.autoDispose((ref) => ScaffoldMessengerService());

/// ScaffoldMessenger 上でスナックバーやダイアログを表示するためのサービスクラス
class ScaffoldMessengerService {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final navigatorKey = GlobalKey<NavigatorState>();

  /// showDialog で指定したビルダー関数を返す。
  Future<void> showDialogByBuilder<T>({
    required Widget Function(BuildContext) builder,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: scaffoldMessengerKey.currentContext!,
      barrierDismissible: barrierDismissible,
      builder: builder,
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

  /// Exception 起点でスナックバーを表示するｌ
  /// Dart の Exception 型の場合は toString() 冒頭を取り除いて差し支えのないメッセージに置換しておく。
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarByException(Exception e) {
    final message = e.toString().replaceAll('Exception: ', '').replaceAll('Exception', '');
    return showSnackBar(message.ifIsEmpty(generalErrorMessage));
  }

  /// フォーカスを外す
  void unFocus() {
    FocusScope.of(scaffoldMessengerKey.currentContext!).unfocus();
  }
}
