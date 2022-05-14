import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/scaffold_messenger.dart';

class SecondPage extends HookConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const path = '/second/';
  static const name = 'SecondPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(name),
            const Gap(16),
            ElevatedButton(
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
