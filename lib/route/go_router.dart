// import 'package:flutter/cupertino.dart';
// import 'package:go_router/go_router.dart';

// import '../pages/first/first_page.dart';
// import '../pages/main/main_page.dart';
// import '../pages/not_found/not_found_page.dart';
// import '../pages/seconde/second_page.dart';

// /// 使用していない。実験
// final router = GoRouter(
//   routes: [
//     GoRoute(
//       path: MainPage.path,
//       builder: (context, state) => const MainPage(key: ValueKey(MainPage.name)),
//     ),
//     GoRoute(
//       path: FirstPage.path,
//       builder: (context, state) => const FirstPage(
//         key: ValueKey(FirstPage.name),
//       ),
//     ),
//     GoRoute(
//       path: SecondPage.path,
//       builder: (context, state) => const SecondPage(
//         key: ValueKey(SecondPage.name),
//       ),
//     ),
//   ],
//   errorBuilder: (context, state) => NotFoundPage(exception: state.error),
// );
