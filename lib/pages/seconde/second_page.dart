import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondPage extends HookConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const path = '/second';
  static const name = 'SecondPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox();
  }
}
