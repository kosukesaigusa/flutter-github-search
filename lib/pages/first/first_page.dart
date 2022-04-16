import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstPage extends HookConsumerWidget {
  const FirstPage({Key? key}) : super(key: key);

  static const path = '/first';
  static const name = 'FirstPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox();
  }
}
