import 'package:flutter/material.dart';
import 'package:flutter_github_search/route/router.dart';
import 'package:flutter_github_search/services/scaffold_messenger.dart';
import 'package:flutter_github_search/widgets/root.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリの
/// main.dart > app.dart > scaffold_messenger_navigator.dart
/// で記述・構成しているウィジェットツリーと同等の内容を
/// ウィジェットテストでも提供するためのラッパーウィジェット。
/// 主に検査したいウィジェットを child に指定する。
/// 必要に応じて ProviderScope.overrides も指定する。
class TestScaffoldWrapper extends StatelessWidget {
  const TestScaffoldWrapper({
    Key? key,
    this.child,
    this.overrides = const <Override>[],
  }) : super(key: key);

  final Widget? child;
  final List<Override> overrides;

  @override
  Widget build(BuildContext context) {
    return RootWidget(
      child: ProviderScope(
        overrides: overrides,
        child: TestApp(child: child),
      ),
    );
  }
}

class TestApp extends HookConsumerWidget {
  const TestApp({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      key: UniqueKey(),
      // navigatorObservers: [MockNavigatorObserver()],
      home: ScaffoldMessenger(
        key: ref.watch(scaffoldMessengerServiceProvider.select((c) => c.scaffoldMessengerKey)),
        child: Scaffold(
          body: child,
        ),
      ),
      onGenerateRoute: ref.watch(routerProvider).onGenerateRoute,
    );
  }
}
