import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';

/// MainPage の BottomNavigationBar の enum
enum BottomTabEnum {
  home,
  search,
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
const bottomTabs = [
  BottomTab(
    index: 0,
    tab: BottomTabEnum.home,
    label: 'ホーム',
    path: HomePage.path,
    iconData: Icons.home,
  ),
  BottomTab(
    index: 1,
    tab: BottomTabEnum.search,
    label: 'マップ',
    path: SearchPage.path,
    iconData: Icons.search,
  ),
];

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
