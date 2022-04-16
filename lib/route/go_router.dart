import 'package:go_router/go_router.dart';

import '../main.dart';
import '../pages/first/first_page.dart';
import '../pages/not_found/not_found_page.dart';
import '../pages/seconde/second_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: MyHomePage.path,
      builder: (context, state) => const MyHomePage(title: 'GitHub Search'),
    ),
    GoRoute(
      path: FirstPage.path,
      builder: (context, state) => const FirstPage(),
    ),
    GoRoute(
      path: SecondPage.path,
      builder: (context, state) => const SecondPage(),
    ),
  ],
  errorBuilder: (context, state) => NotFoundPage(exception: state.error),
);
