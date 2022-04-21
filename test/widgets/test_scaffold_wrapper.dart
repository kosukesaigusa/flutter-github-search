import 'package:flutter/material.dart';
import 'package:flutter_github_search/widgets/root.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestScaffoldWrapper extends StatelessWidget {
  const TestScaffoldWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RootWidget(
      child: ProviderScope(
        child: MaterialApp(
          home: ScaffoldMessenger(
            child: Scaffold(
              body: child,
            ),
          ),
        ),
      ),
    );
  }
}
