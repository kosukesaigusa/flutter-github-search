import 'package:flutter/material.dart';

import '../pages/first/first_page.dart';
import '../pages/home/home_page.dart';
import '../pages/issue/issue_page.dart';
import '../pages/main/main_page.dart';
import '../pages/repo/search_repo_page.dart';
import '../pages/second/second_page.dart';
import '../utils/types.dart';

/// ページ一覧
final routeBuilder = <String, PageBuilder>{
  MainPage.path: (_, args) => const MainPage(key: ValueKey(MainPage.name)),
  FirstPage.path: (_, args) => const FirstPage(key: ValueKey(FirstPage.name)),
  SecondPage.path: (_, args) => const SecondPage(key: ValueKey(SecondPage.name)),
  HomePage.path: (_, args) => const HomePage(key: ValueKey(HomePage.name)),
  SearchRepoPage.path: (_, args) => const SearchRepoPage(key: ValueKey(SearchRepoPage.name)),
  IssuePage.path: (_, args) => const IssuePage(key: ValueKey(IssuePage.name)),
};
