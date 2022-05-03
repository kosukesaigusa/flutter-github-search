import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/bottom_tab/bottom_tab.dart';
import '../../route/bottom_tabs.dart';
import '../../widgets/stacked_pages_navigator.dart';

class MainPage extends StatefulHookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  static const path = '/';
  static const name = 'MainPage';

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    // 必要な初期化処理を行う
    Future.wait([
      // _initializePushNotification(),
      // _initializeDynamicLinks(),
    ]);
  }

  /// アプリのライフサイクルを監視する
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('***');
    debugPrint('AppLifecycleState: ${state.name}');
    debugPrint('***');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: Stack(
              children: [for (final tab in bottomTabs) _buildStackedPages(tab)],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              // BottomTab の画面を切り替える。
              // 現在表示している状態のタブをタップした場合は画面をすべて pop する。
              onTap: _onTap,
              currentIndex: ref.watch(bottomTabStateProvider).index,
              items: bottomTabs
                  .map((b) => BottomNavigationBarItem(
                        icon: Icon(b.iconData),
                        label: b.label,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    FocusScope.of(context).unfocus();
    final bottomTab = BottomTab.getByIndex(index);
    final currentBottomTab = ref.watch(bottomTabStateProvider);
    if (bottomTab == currentBottomTab) {
      bottomTab.key.currentState!.popUntil((route) => route.isFirst);
      return;
    }
    ref.read(bottomTabStateProvider.notifier).update((state) => bottomTab);
  }

  /// MainPage の BottomNavigationBar で切り替える各画面
  Widget _buildStackedPages(BottomTab bottomTab) {
    final currentBottomTab = ref.watch(bottomTabStateProvider);
    return Offstage(
      offstage: bottomTab != currentBottomTab,
      child: TickerMode(
        enabled: bottomTab == currentBottomTab,
        child: MainStackedPagesNavigator(bottomTab: bottomTab),
      ),
    );
  }
}
