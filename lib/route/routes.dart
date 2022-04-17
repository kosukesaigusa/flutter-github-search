import 'package:flutter/material.dart';

import '../pages/first/first_page.dart';
import '../pages/home/home_page.dart';
import '../pages/main/main_page.dart';
import '../pages/search/search_page.dart';
import '../pages/second/second_page.dart';
import '../utils/types.dart';

/// ページ一覧
final routeBuilder = <String, PageBuilder>{
  MainPage.path: (_, args) => const MainPage(key: ValueKey(MainPage.name)),
  FirstPage.path: (_, args) => const FirstPage(key: ValueKey(FirstPage.name)),
  SecondPage.path: (_, args) => const SecondPage(key: ValueKey(SecondPage.name)),
  HomePage.path: (_, args) => const HomePage(key: ValueKey(HomePage.name)),
  SearchPage.path: (_, args) => const SearchPage(key: ValueKey(SearchPage.name)),
};
