import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/scaffold_messenger/scaffold_messenger.dart';
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
              // onPressed: () => context.go(FirstPage.path),
              onPressed: () => Navigator.pushNamed<void>(context, FirstPage.path),
              child: const Text('Go to First Page'),
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed<void>(context, SecondPage.path),
              child: const Text('Go to Second Page'),
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: () => ref.watch(scaffoldMessengerController).showSnackBar('スナックバー'),
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
