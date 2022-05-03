import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/home/home_page.dart';
import '../pages/issue/issue_page.dart';
import '../pages/repo/repo_page.dart';

/// MainPage の BottomNavigationBarItem に対応する内容一覧。
/// さすがに override することはないと思われるので Provider は使用せず
/// イミュータブルなグローバル変数にする。
final bottomTabs = <BottomTab>[
  BottomTab._(
    index: 0,
    label: 'Home',
    path: HomePage.path,
    iconData: FontAwesomeIcons.house,
    key: GlobalKey<NavigatorState>(),
  ),
  BottomTab._(
    index: 1,
    label: 'Repos',
    path: RepoPage.path,
    iconData: FontAwesomeIcons.database,
    key: GlobalKey<NavigatorState>(),
  ),
  BottomTab._(
    index: 2,
    label: 'Issues',
    path: IssuePage.path,
    iconData: FontAwesomeIcons.circleCheck,
    key: GlobalKey<NavigatorState>(),
  ),
];

/// MainPage の BottomNavigationBar の内容
class BottomTab {
  /// プライベートなコンストラクタ。
  /// このファイルの外ではインスタンス化しない。
  const BottomTab._({
    required this.index,
    required this.label,
    required this.path,
    required this.iconData,
    required this.key,
  });

  final int index;
  final String label;
  final String path;
  final IconData iconData;
  final GlobalKey<NavigatorState> key;

  /// インデックス番号を指定して対応する BottomTab を取得する。
  /// BottomTab は外でインスタンス化するつもりがないので static メソッドでよい。
  static BottomTab getByIndex(int index) => bottomTabs.firstWhere(
        (b) => b.index == index,
        orElse: () => bottomTabs.first,
      );

  /// パス名 (e.g. /home/)を指定して対応する BottomTab を取得する。
  /// BottomTab は外でインスタンス化するつもりがないので static メソッドでよい。
  static BottomTab getByPath(String bottomTabPath) => bottomTabs.firstWhere(
        (b) => b.path == bottomTabPath,
        orElse: () => bottomTabs.first,
      );
}
