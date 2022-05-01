import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/home/home_page.dart';
import '../pages/issue/issue_page.dart';
import '../pages/repo/search_repo_page.dart';

/// MainPage の BottomNavigationBar の enum
enum BottomTabEnum {
  home,
  repo,
  issue,
}

/// BottomTabEnum の Extension
extension BottomTabEnumExtension on BottomTabEnum {
  /// それぞれの BottomTab の設定内容
  BottomTab get bottomTab {
    switch (this) {
      case BottomTabEnum.home:
        return const BottomTab(
          index: 0,
          tab: BottomTabEnum.home,
          label: 'Home',
          path: HomePage.path,
          iconData: FontAwesomeIcons.house,
        );
      case BottomTabEnum.repo:
        return const BottomTab(
          index: 1,
          tab: BottomTabEnum.repo,
          label: 'Repos',
          path: SearchRepoPage.path,
          iconData: FontAwesomeIcons.database,
        );
      case BottomTabEnum.issue:
        return const BottomTab(
          index: 2,
          tab: BottomTabEnum.issue,
          label: 'Issues',
          path: IssuePage.path,
          iconData: FontAwesomeIcons.circleCheck,
        );
    }
  }
}

/// MainPage の BottomNavigationBar の内容
class BottomTab {
  const BottomTab({
    required this.index,
    required this.tab,
    required this.label,
    required this.path,
    required this.iconData,
  });

  final int index;
  final BottomTabEnum tab;
  final String label;
  final String path;
  final IconData iconData;
}

/// MainPage の BottomNavigationBarItem 一覧
final bottomTabs = BottomTabEnum.values.map((e) => e.bottomTab).toList();

/// MainPage の各 BottomNavigationBarItem に対応する NavigatorKey 一覧
final bottomTabKeys = <BottomTabEnum, GlobalKey<NavigatorState>>{
  for (final e in BottomTabEnum.values) e: GlobalKey<NavigatorState>(),
};

/// BottomTabEnum から タブの index を取得する。
int getIndexByTab(BottomTabEnum tab) {
  return bottomTabs
      .firstWhere(
        (bottomTab) => bottomTab.tab == tab,
        orElse: () => bottomTabs[0],
      )
      .index;
}

/// タブの名前からタブを取得する。
BottomTabEnum getTabByTabName(String tabName) {
  return BottomTabEnum.values.firstWhere(
    (tab) => tab.name == tabName,
    orElse: () => BottomTabEnum.home,
  );
}
