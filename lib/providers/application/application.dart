import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application_state.dart';

final applicationStateNotifierProvider =
    StateNotifierProvider<ApplicationStateNotifierProvider, ApplicationState>(
  (ref) => ApplicationStateNotifierProvider(),
);

/// アプリケーション全体で保持・操作したい状態をまとめる
/// いまは特にそのような用途がないため実装内容は空っぽ。
class ApplicationStateNotifierProvider extends StateNotifier<ApplicationState> {
  ApplicationStateNotifierProvider() : super(const ApplicationState());
}
