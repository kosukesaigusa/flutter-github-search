import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../route/main_tabs.dart';
import 'bottom_navigation_bar_state.dart';

final bottomNavigationBarController =
    StateNotifierProvider<BottomNavigationBarController, BottomNavigationBarState>(
  (ref) => BottomNavigationBarController(),
);

class BottomNavigationBarController extends StateNotifier<BottomNavigationBarState> {
  BottomNavigationBarController()
      : super(BottomNavigationBarState(
          currentIndex: 0,
          currentTab: BottomTabEnum.home,
        ));

  /// 表示中の BottomNavigationBar を更新する。
  void changeTab({
    required int index,
    required BottomTabEnum tab,
  }) {
    state = state.copyWith(currentIndex: index, currentTab: tab);
  }
}
