import 'package:flutter/material.dart';

import 'constants/localization.dart';
import 'widgets/scaffold_messenger_navigator.dart';

/// MaterialApp を返すウィジェット。
/// ここではルートは制御せず、home プロパティに
/// ScaffoldMessengerNavigator を指定するだけとする。
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: UniqueKey(),
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: const [locale],
      title: 'flutter-github-search',
      theme: ThemeData(primarySwatch: Colors.blue).copyWith(),
      home: const ScaffoldMessengerNavigator(),
      builder: (context, child) {
        return MediaQuery(
          // 端末依存のフォントスケールを 1 に固定する
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
    );
  }
}
