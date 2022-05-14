import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pages/first/first_page.dart';
import '../pages/home/home_page.dart';
import '../pages/issue/issue_page.dart';
import '../pages/main/main_page.dart';
import '../pages/not_found/not_found_page.dart';
import '../pages/repo/repo_page.dart';
import '../pages/second/second_page.dart';
import '../utils/route.dart';

/// テスト時に override できるように Provider でラップしておく
final appRoutesProvider = Provider((_) => appRoutes);

/// ページのパスと対応するビルダーメソッドをまとめた
/// AppRoute インスタンス一覧
final appRoutes = <AppRoute>[
  AppRoute(
    MainPage.path,
    (_, args) => const MainPage(
      key: ValueKey(MainPage.name),
    ),
  ),
  AppRoute(
    FirstPage.path,
    (_, args) => const FirstPage(
      key: ValueKey(FirstPage.name),
    ),
  ),
  AppRoute(
    SecondPage.path,
    (_, args) => const SecondPage(
      key: ValueKey(SecondPage.name),
    ),
  ),
  AppRoute(
    HomePage.path,
    (_, args) => const HomePage(
      key: ValueKey(HomePage.name),
    ),
  ),
  AppRoute(
    RepoPage.path,
    (_, args) => const RepoPage(
      key: ValueKey(RepoPage.name),
    ),
  ),
  AppRoute(
    IssuePage.path,
    (_, args) => const IssuePage(
      key: ValueKey(IssuePage.name),
    ),
  ),
  AppRoute(
    NotFoundPage.path,
    (_, __) => const NotFoundPage(
      key: ValueKey(NotFoundPage.name),
    ),
  ),
];
