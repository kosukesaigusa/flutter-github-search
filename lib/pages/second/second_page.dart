import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/scaffold_messenger/scaffold_messenger.dart';

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
            const Text('Second Page'),
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
