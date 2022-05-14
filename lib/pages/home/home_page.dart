import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/scaffold_messenger.dart';
import '../first/first_page.dart';
import '../second/second_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  static const path = '/home/';
  static const name = 'HomePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Search'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              key: const ValueKey(FirstPage.path),
              onPressed: () => Navigator.pushNamed<void>(context, FirstPage.path),
              child: const Text('Go to ${FirstPage.name}'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey(SecondPage.path),
              onPressed: () => Navigator.pushNamed<void>(context, SecondPage.path),
              child: const Text('Go to ${SecondPage.name}'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey('SnackBar'),
              onPressed: () =>
                  ref.watch(scaffoldMessengerServiceProvider).showSnackBar('A SnackBar is shown.'),
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
