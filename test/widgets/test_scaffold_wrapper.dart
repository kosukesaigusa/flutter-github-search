import 'package:flutter/material.dart';
import 'package:flutter_github_search/services/scaffold_messenger.dart';
import 'package:flutter_github_search/widgets/root.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestScaffoldWrapper extends StatelessWidget {
  const TestScaffoldWrapper({
    Key? key,
    required this.child,
    this.overrides = const <Override>[],
  }) : super(key: key);

  final Widget child;
  final List<Override> overrides;

  @override
  Widget build(BuildContext context) {
    return RootWidget(
      child: ProviderScope(
        overrides: overrides,
        child: MaterialApp(
          home: TestScaffoldMessenger(
            child: child,
          ),
        ),
      ),
    );
  }
}

class TestScaffoldMessenger extends HookConsumerWidget {
  const TestScaffoldMessenger({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldMessenger(
      key: ref.watch(scaffoldMessengerServiceProvider.select((c) => c.scaffoldMessengerKey)),
      child: Scaffold(
        body: child,
      ),
    );
  }
}
